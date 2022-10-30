"use strict";
// import { GraphQLError } from 'graphql';
Object.defineProperty(exports, "__esModule", { value: true });
exports.ERROR_CODES = void 0;
// throw new GraphQLError(message, {
//   extensions: { code: 'YOUR_ERROR_CODE', myCustomExtensions },
// });
var ERROR_CODES;
(function (ERROR_CODES) {
    ERROR_CODES["UNAUTHENTICATED"] = "unauthencticated";
    ERROR_CODES["INVALID_INPUT"] = "invalid_input";
    ERROR_CODES["FORBIDDEN"] = "forbidden";
})(ERROR_CODES = exports.ERROR_CODES || (exports.ERROR_CODES = {}));
