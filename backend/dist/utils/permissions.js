"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.permissions = void 0;
const graphql_shield_1 = require("graphql-shield");
const rules_1 = require("./rules");
exports.permissions = (0, graphql_shield_1.shield)({
    Query: {
        fetchProfile: rules_1.isAuthenticated,
    },
    Mutation: {
        signin: rules_1.signInPayload,
        signUp: rules_1.signUpPayload,
        updateProfile: rules_1.isAuthenticated
    },
});
