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
Object.defineProperty(exports, "__esModule", { value: true });
// npm install @apollo/server express graphql cors body-parser
const server_1 = require("@apollo/server");
const express4_1 = require("@apollo/server/express4");
const drainHttpServer_1 = require("@apollo/server/plugin/drainHttpServer");
const schema_1 = require("@graphql-tools/schema");
const body_parser_1 = require("body-parser");
const cors_1 = __importDefault(require("cors"));
const express_1 = __importDefault(require("express"));
const graphql_middleware_1 = require("graphql-middleware");
const graphql_upload_ts_1 = require("graphql-upload-ts");
const http_1 = __importDefault(require("http"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const schema_2 = require("./schema");
const permissions_1 = require("./utils/permissions");
function startApolloServer() {
    return __awaiter(this, void 0, void 0, function* () {
        const app = (0, express_1.default)();
        const schemaWithPermissions = (0, graphql_middleware_1.applyMiddleware)((0, schema_1.makeExecutableSchema)({
            typeDefs: schema_2.typeDefs,
            resolvers: schema_2.resolvers,
        }), permissions_1.permissions);
        const httpServer = http_1.default.createServer(app);
        const server = new server_1.ApolloServer({
            schema: schemaWithPermissions,
            csrfPrevention: false,
            plugins: [(0, drainHttpServer_1.ApolloServerPluginDrainHttpServer)({ httpServer })],
        });
        yield server.start();
        app.use((0, graphql_upload_ts_1.graphqlUploadExpress)({
            maxFileSize: 1 * 1024 * 1024,
            maxFiles: 10,
        }));
        app.use("/graphql", (0, cors_1.default)(), (0, body_parser_1.json)(), (0, express4_1.expressMiddleware)(server, {
            context: ({ req, res }) => __awaiter(this, void 0, void 0, function* () {
                let userId = null;
                let isTokenValid = true;
                if (req.headers["authorization"]) {
                    const token = req.headers["authorization"].split(" ").pop();
                    try {
                        const verifiedToken = jsonwebtoken_1.default.verify(token, process.env.SECREATE_TOKEN);
                        userId = verifiedToken._id;
                    }
                    catch (error) {
                        // console.log(error)
                        isTokenValid = false;
                        // res.status(400).send("Invalid Token");
                        userId !== null;
                    }
                }
                // console.log(req.headers)
                return { isTokenValid, UserId: userId };
            }),
        }));
        yield new Promise((resolve) => httpServer.listen({ port: 4000 }, resolve));
        console.log(`🚀 Server ready at http://localhost:4000/graphql`);
    });
}
startApolloServer();
