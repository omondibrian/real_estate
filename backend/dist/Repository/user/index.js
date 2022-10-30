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
exports.UserRepository = void 0;
const PrismaClient_1 = require("../../utils/PrismaClient");
class UserRepository {
    constructor() {
        this.client = PrismaClient_1.DBClient.getInstance().prisma;
        this._userProjections = {
            id: true,
            email: true,
            name: true,
            password: true,
            phoneNumber: true,
            profileImage: true,
            accountStatus: true,
            role: true,
            placementDate: true,
        };
        this.insert = (data) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.user.create({
                data: {
                    email: data.email,
                    name: data.name,
                    phoneNumber: data.phoneNumber,
                    profileImage: data.profileImage,
                    token: Date.now().toLocaleString(),
                    role: data.role === "PropertyManager" ? "PropertyManager" : "Tenant",
                    password: data.password,
                    accountStatus: data.accountStatus,
                },
                select: this._userProjections,
            });
            return Object.assign(Object.assign({}, results), { placementDate: this.fmtDate(results.placementDate) });
        });
        this.update = (options, data) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.user.update({
                where: {
                    // id: options.value,
                    [options.field]: options.value,
                },
                data: {
                    // email: data.email,
                    // name: data.name,
                    token: data === null || data === void 0 ? void 0 : data.token,
                    phoneNumber: data.phoneNumber,
                    profileImage: data.profileImage,
                    role: data.role === "PropertyManager" ? "PropertyManager" : "Tenant",
                    password: data.password,
                    accountStatus: data.accountStatus,
                },
                select: this._userProjections,
            });
            return Object.assign(Object.assign({}, results), { placementDate: this.fmtDate(results.placementDate) });
        });
        this.find = (data) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.user.findUnique({
                where: {
                    email: data.value,
                },
                select: this._userProjections,
            });
            if (results === null)
                return undefined;
            return Object.assign(Object.assign({}, results), { placementDate: this.fmtDate(results.placementDate) });
        });
        this.findById = (id) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.user.findUnique({
                where: {
                    id,
                },
                select: this._userProjections,
            });
            if (results === null)
                return undefined;
            return Object.assign(Object.assign({}, results), { placementDate: this.fmtDate(results.placementDate) });
        });
        this.Delete = (id) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.user.delete({
                where: {
                    id,
                },
                select: this._userProjections,
            });
            return Object.assign(Object.assign({}, results), { placementDate: this.fmtDate(results.placementDate) });
        });
        this.setToken = (id, token) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.passwordResets.create({
                data: {
                    token,
                    userId: id,
                },
                select: {
                    id: true,
                    token: true,
                    // userId: true,
                },
            });
            return {
                token: results.token,
                id: results.id,
            };
        });
        this.getToken = (token) => __awaiter(this, void 0, void 0, function* () {
            const results = yield this.client.passwordResets.findFirst({
                where: {
                    token: {
                        equals: token,
                    },
                },
                select: {
                    id: true,
                    token: true,
                    userId: true,
                },
            });
            return {
                token: results === null || results === void 0 ? void 0 : results.token,
                id: results === null || results === void 0 ? void 0 : results.id,
                userId: results === null || results === void 0 ? void 0 : results.userId,
            };
        });
    }
    fmtDate(results) {
        return `${results.getDay()}-${results.getMonth()}-${results.getFullYear()}`;
    }
}
exports.UserRepository = UserRepository;
