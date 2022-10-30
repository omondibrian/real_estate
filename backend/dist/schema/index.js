"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.typeDefs = exports.resolvers = void 0;
const Resolver_1 = require("./Resolver");
Object.defineProperty(exports, "resolvers", { enumerable: true, get: function () { return Resolver_1.resolvers; } });
const Typedef_1 = __importDefault(require("./Typedef"));
exports.typeDefs = Typedef_1.default;
