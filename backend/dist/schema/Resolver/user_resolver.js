"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
var _a, _b, _c;
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserResolver = void 0;
const errors_1 = require("@apollo/server/errors");
const bcrypt_1 = __importDefault(require("bcrypt"));
const graphql_1 = require("graphql");
const graphql_upload_ts_1 = require("graphql-upload-ts");
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const user_1 = require("../../Repository/user");
const Email_1 = __importDefault(require("../../services/Email"));
const utils_1 = require("../../utils");
const errors_2 = require("../../utils/errors");
const repo = new user_1.UserRepository();
const host = {
    user: (_a = process.env.SMTP_USER) === null || _a === void 0 ? void 0 : _a.trim(),
    hostSMTP: (_b = process.env.SMTP_HOST) === null || _b === void 0 ? void 0 : _b.trim(),
    password: (_c = process.env.SMTP_PASSWORD) === null || _c === void 0 ? void 0 : _c.trim(),
};
const notification = new Email_1.default(host);
const books = [
    {
        title: "The Awakening",
        author: "Kate Chopin",
    },
    {
        title: "City of Glass",
        author: "Paul Auster",
    },
];
exports.UserResolver = {
    Upload: graphql_upload_ts_1.GraphQLUpload,
    SignInResult: {
        __resolveType(obj) {
            if (obj.user) {
                return "SignInResponse";
            }
            if (obj.userID) {
                return "AccountNotActive";
            }
            if (obj.msg) {
                return "InvalidCredentials";
            }
            return null;
        },
    },
    DefaultResponseResult: {
        __resolveType(obj) {
            if (obj.errorMessage) {
                return "ApplicationErrors";
            }
            if (obj.message) {
                return "DefaultResponse";
            }
            return null;
        },
    },
    ProfileResults: {
        __resolveType(obj) {
            if (obj.errorMessage) {
                return "ApplicationErrors";
            }
            if (obj.name) {
                return "User";
            }
            return null;
        },
    },
    VerificationResults: {
        __resolveType(obj) {
            if (obj.errorMessage) {
                return "ApplicationErrors";
            }
            if (obj.token) {
                return "OTPResponse";
            }
            return null;
        },
    },
    Query: {
        books: (_, args, context) => {
            console.log(args);
            return books;
        },
        fetchProfile: (_, args, ctx) => __awaiter(void 0, void 0, void 0, function* () {
            console.log(ctx);
            const profile = yield repo.findById(ctx.UserId);
            if (profile === undefined) {
                return {
                    errorMessage: "no User found",
                    stack: "",
                };
            }
            const { name, email, profileImage, role, placementDate, accountStatus } = profile;
            return {
                name,
                email,
                profileImage,
                role,
                placementDate,
                accountState: accountStatus,
            };
        }),
        verifyToken: (_, args) => __awaiter(void 0, void 0, void 0, function* () {
            var _d;
            //fetch the token fro storage
            const savedToken = yield repo.getToken(args.token);
            if (savedToken.token !== undefined) {
                // create and assign an authentification token
                const token = jsonwebtoken_1.default.sign({ _id: savedToken.id }, (_d = process.env.SECREATE_TOKEN) === null || _d === void 0 ? void 0 : _d.trim(), {
                    expiresIn: 10 * 60,
                });
                return {
                    message: "otp verification was successfull",
                    token,
                };
            }
            else {
                return {
                    errorMessage: "Invalid otp code ",
                };
            }
        }),
    },
    Mutation: {
        signUp: (parent, args, context) => __awaiter(void 0, void 0, void 0, function* () {
            try {
                //find if their exists a user with the same email
                const existingUser = yield repo.find({
                    field: "email",
                    value: args.email,
                });
                if (existingUser) {
                    throw new graphql_1.GraphQLError(" Email Already in Use", {
                        extensions: {
                            code: errors_2.ERROR_CODES.INVALID_INPUT,
                            http: {
                                status: 403,
                            },
                        },
                    });
                }
                const profileImage = yield args.profileImage;
                let filePath = "";
                try {
                    const data = yield (0, utils_1.saveImage)(profileImage);
                    filePath = data.filePath;
                }
                catch (error) {
                    throw new graphql_1.GraphQLError("Error while processing image", {
                        extensions: {
                            code: errors_1.ApolloServerErrorCode.INTERNAL_SERVER_ERROR,
                            http: {
                                status: 500,
                            },
                        },
                    });
                }
                // encrpte the password
                const encrptedPass = yield encryptPassword(args.password);
                const savedUser = yield repo.insert({
                    name: args.name,
                    email: args.email,
                    password: encrptedPass,
                    profileImage: filePath,
                    accountStatus: args.accountStatus,
                    phoneNumber: args.phoneNumber,
                    role: args.role,
                });
                if (savedUser) {
                    // compose an email
                    const html = `
               Welcome <strong>${savedUser.name} </strong>,<br/>
               Thank you for joining Realtors Platform<br/><br/>
               Have a nice day.
           `;
                    // send the email
                    yield notification.send({
                        to: savedUser.email,
                        from: process.env.Email,
                        body: html,
                        subject: "Account Registration",
                        text: html,
                    });
                }
                return {
                    message: "received successfully",
                };
            }
            catch (error) {
                return {
                    errorMessage: "Error occcured while registering user",
                    code: process.env.Node_ENV === "development" ? error.code : "🔥🔥",
                    stack: process.env.Node_ENV === "development" ? error.stacktrace : "🔥🔥",
                };
            }
        }),
        signin: (_, args, context) => __awaiter(void 0, void 0, void 0, function* () {
            var _e, _f;
            //find if their exists a user with the same email
            const existingUser = yield repo.find({
                field: "email",
                value: args.email,
            });
            if (existingUser === undefined) {
                return {
                    msg: "Error authenticating please try again !",
                };
            }
            console.log(existingUser);
            //check if account is active
            if (!existingUser.accountStatus) {
                return {
                    userID: existingUser.id,
                    message: "Access Denied 👺👺 - This account has been temporarily been disabled .Please activate your account",
                };
            }
            // check if password is correct
            const validPass = yield bcrypt_1.default.compare(args.password, existingUser.password);
            if (!validPass) {
                return {
                    msg: "Error authenticating please try again !",
                };
            }
            // create and assign an authentification token
            const token = jsonwebtoken_1.default.sign({ _id: existingUser.id }, (_e = process.env.SECREATE_TOKEN) === null || _e === void 0 ? void 0 : _e.trim(), {
                expiresIn: 30 * 60,
            });
            const refreshToken = jsonwebtoken_1.default.sign({ _id: existingUser.id }, (_f = process.env.SECREATE_TOKEN) === null || _f === void 0 ? void 0 : _f.trim(), {
                expiresIn: 30 * 24 * 60 * 60,
            });
            yield repo.update({
                field: "id",
                value: existingUser.id + "",
            }, Object.assign(Object.assign({}, existingUser), { token: refreshToken }));
            return {
                message: "Login Successfull",
                user: Object.assign(Object.assign({}, existingUser), { accountState: existingUser.accountStatus }),
                token,
                refreshToken,
            };
        }),
        forgotPassword: (_, args) => __awaiter(void 0, void 0, void 0, function* () {
            const user = yield repo.find({
                field: "email",
                value: args.email,
            });
            if (user === undefined) {
                return {
                    errorMessage: "Invalid Request passed as input",
                };
            }
            //generate reset token
            const token = generateOtp();
            console.log(token);
            //save the token
            yield repo.setToken(user === null || user === void 0 ? void 0 : user.id, token);
            //send email notification to user
            const html = `
        Hello <strong>${user === null || user === void 0 ? void 0 : user.name} </strong>,<br/>
        Your password reset request has been processed successfully,
        to proceed enter the following token ${token} .<br/>
        Ingore this message if the requested wasn't made by you <br/><br/>
        Have a nice day.
    `;
            // send the email
            yield notification.send({
                to: user === null || user === void 0 ? void 0 : user.email,
                from: process.env.Email,
                body: html,
                subject: "Password Reset",
                text: html,
            });
            //return response
            return {
                message: "Password reset was successfull check your email for a reset token",
            };
        }),
        updateProfile: (_, args, ctx) => __awaiter(void 0, void 0, void 0, function* () {
            const data = {};
            try {
                console.log(args);
                if (args.password) {
                    // encrpte the password
                    const encrptedPass = yield encryptPassword(args.password);
                    data["password"] = encrptedPass;
                }
                if (yield args.profileImage) {
                    let filePath = "";
                    filePath = yield saveFile(args, filePath);
                    data["profileImage"] = filePath;
                }
                const result = yield repo.update({
                    field: "id",
                    value: ctx.UserId,
                }, data);
                const { name, email, profileImage, role, placementDate, accountStatus, } = result;
                return {
                    name,
                    email,
                    profileImage,
                    role,
                    placementDate,
                    accountState: accountStatus,
                };
            }
            catch (e) {
                console.log(e);
            }
        }),
    },
};
function encryptPassword(password) {
    return __awaiter(this, void 0, void 0, function* () {
        return yield bcrypt_1.default.hash(password, 10);
    });
}
function saveFile(args, filePath) {
    return __awaiter(this, void 0, void 0, function* () {
        try {
            const data = yield (0, utils_1.saveImage)(yield args.profileImage);
            filePath = data.filePath;
        }
        catch (error) {
            throw new graphql_1.GraphQLError("Error while processing image", {
                extensions: {
                    code: errors_1.ApolloServerErrorCode.INTERNAL_SERVER_ERROR,
                    http: {
                        status: 500,
                    },
                },
            });
        }
        return filePath;
    });
}
const generateOtp = () => {
    const digits = "0123456789", otpLength = 5;
    let otp = "";
    for (let i = 1; i < otpLength; i++) {
        const index = Math.floor(Math.random() * digits.length);
        otp += digits[index];
    }
    return otp;
};
