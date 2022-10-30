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
Object.defineProperty(exports, "__esModule", { value: true });
exports.signInPayload = exports.updateProfilePayload = exports.signUpPayload = exports.isAuthenticated = void 0;
const graphql_shield_1 = require("graphql-shield");
const _1 = require(".");
exports.isAuthenticated = (0, graphql_shield_1.rule)({ cache: "contextual" })((_, args, ctx) => __awaiter(void 0, void 0, void 0, function* () {
    return ctx.UserId !== null;
}));
exports.signUpPayload = (0, graphql_shield_1.inputRule)()((yup) => {
    const MAX_FILE_SIZE = 3 * 1024 * 1024;
    return yup.object({
        name: yup.string().required(),
        email: yup.string().email().required(),
        password: yup.string().required(),
        phoneNumber: yup.string().required(),
        role: yup.string().required(),
        accountState: yup.boolean().required(),
        profileImage: yup
            .mixed()
            .test({
            message: "Please provide only the image",
            test: (file, context) => __awaiter(void 0, void 0, void 0, function* () {
                const { fileName } = yield file;
                return ["png", "jpg", "jpeg"].includes(fileName.spilt(".").pop());
            }),
        })
            .test({
            message: "Maximum FileSize Exceeded",
            test: (file, context) => __awaiter(void 0, void 0, void 0, function* () {
                const fileObj = yield file;
                let isValid = true;
                try {
                    const size = yield (0, _1.checkFileSize)(fileObj, MAX_FILE_SIZE);
                }
                catch (error) {
                    if (error === false) {
                        isValid = false;
                    }
                }
                return isValid;
            }),
        }),
    });
});
exports.updateProfilePayload = (0, graphql_shield_1.inputRule)()((yup) => {
    const MAX_FILE_SIZE = 3 * 1024 * 1024;
    return yup.object({
        input: yup.object({
            password: yup.string().nullable(),
            profileImage: yup
                .mixed()
                .test({
                message: "Please provide only the image",
                test: (file, context) => __awaiter(void 0, void 0, void 0, function* () {
                    const { fileName } = yield file;
                    return ["png", "jpg", "jpeg"].includes(fileName.spilt(".").pop());
                }),
            })
                .test({
                message: "Maximum FileSize Exceeded",
                test: (file, context) => __awaiter(void 0, void 0, void 0, function* () {
                    const fileObj = yield file;
                    let isValid = true;
                    try {
                        const size = yield (0, _1.checkFileSize)(fileObj, MAX_FILE_SIZE);
                    }
                    catch (error) {
                        if (error === false) {
                            isValid = false;
                        }
                    }
                    return isValid;
                }),
            })
                .nullable(),
        }),
    });
});
exports.signInPayload = (0, graphql_shield_1.inputRule)()((yup) => yup.object({
    password: yup.string().required(),
    email: yup.string().email().required(),
}));
