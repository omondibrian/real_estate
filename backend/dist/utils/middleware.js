"use strict";
/**
 * @fileOverview contains all the custom middleware used in the application
 * @author Brian Omondi
 * @version 0.0.1
 */
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.extractToken = exports.TokenMiddleware = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const TokenMiddleware = (req, res, next) => {
    const token = req.header("Authorization").split(" ").pop();
    if (!token)
        return res.status(401).send("ACCESS DENIED");
    try {
        const verifiedToken = jsonwebtoken_1.default.verify(token, process.env.SECREATE_TOKEN);
        req.UserId = verifiedToken._id;
        next();
    }
    catch (error) {
        res.status(400).send("Invalid Token");
    }
};
exports.TokenMiddleware = TokenMiddleware;
const extractToken = (req, res, next) => {
    const token = req.header("Authorization").split(" ").pop();
    req.token = token;
    next();
};
exports.extractToken = extractToken;
