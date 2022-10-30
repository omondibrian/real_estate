"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.fmtDate = exports.deleteFile = exports.checkFileSize = exports.saveImage = void 0;
const fs_1 = __importDefault(require("fs"));
const uuid_1 = require("uuid");
function saveImage(profileImage) {
    const { filename, mimetype, encoding, createReadStream } = profileImage;
    const extension = filename.split(".").pop();
    const encryptedName = `${(0, uuid_1.v4)()}_${Date.now()}.${extension}`;
    const filePath = `/storage/${encryptedName}`;
    const fullPath = `/home/brian/Desktop/work/final project design concepts/source_code/backend/${filePath}`;
    const stream = createReadStream();
    return new Promise((res, rej) => {
        stream
            .on("error", (error) => {
            if (stream.closed)
                fs_1.default.unlinkSync(fullPath);
            rej(error);
        })
            .pipe(fs_1.default.createWriteStream(fullPath))
            .on("error", (err) => rej(err))
            .on("finish", () => res({
            extension,
            filename,
            filePath,
            fullPath,
            encoding,
            mimetype,
        }));
    });
}
exports.saveImage = saveImage;
function checkFileSize(profileImage, fileMaxSize) {
    const { createReadStream } = profileImage;
    const stream = createReadStream();
    let fileSize = 0;
    return new Promise((res, rej) => {
        stream
            .on("data", (chunk) => {
            fileSize += chunk.length;
            if (fileSize > fileMaxSize)
                rej(false);
        })
            .on("error", (err) => rej(err))
            .on("finish", () => res(fileSize));
    });
}
exports.checkFileSize = checkFileSize;
function deleteFile(filePath) {
    fs_1.default.unlinkSync(filePath);
}
exports.deleteFile = deleteFile;
function fmtDate(results) {
    return `${results.getDay()}-${results.getMonth()}-${results.getFullYear()}`;
}
exports.fmtDate = fmtDate;
