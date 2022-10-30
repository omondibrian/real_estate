"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.resolvers = void 0;
const lodash_merge_1 = __importDefault(require("lodash.merge"));
const user_resolver_1 = require("./user_resolver");
exports.resolvers = (0, lodash_merge_1.default)({}, user_resolver_1.UserResolver);
