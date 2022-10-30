"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DBClient = void 0;
const client_1 = require("@prisma/client");
class DBClient {
    constructor() {
        this._prisma = new client_1.PrismaClient();
    }
    get prisma() {
        return this._prisma;
    }
    static getInstance() {
        if (!DBClient.instance) {
            DBClient.instance = new DBClient();
        }
        return DBClient.instance;
    }
}
exports.DBClient = DBClient;
// const client1 = DBClient.getInstance().prisma;
// const client2 = DBClient.getInstance().prisma;
// console.log(client1 === client2);
// // client.prisma.
