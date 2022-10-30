"use strict";
/**
 * @fileOverview contains the various functions to manage the email fuctionalities.
 * @author Brian Omondi
 * @version 1.0.0
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
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
const nodemailer_1 = __importDefault(require("nodemailer"));
const uuid_1 = require("uuid");
class NotificationService {
    constructor(hostCredentials) {
        this.hostCredentials = hostCredentials;
        this.send = (mail) => __awaiter(this, void 0, void 0, function* () {
            // if(process.env.Node_ENV === 'test'){
            //   return {
            //     messageId: '675-4545-664',
            //     msg: "Message sent Successfull",
            //   };
            // }
            // send mail with defined transport object
            const info = yield this.notificationTransporter.sendMail({
                from: mail.from,
                to: mail.to,
                subject: mail.subject,
                text: mail.text,
                html: mail.body, // html body
            });
            console.log("Message sent: %s", info.messageId);
            this.hostCredentials.hostSMTP === "smtp.ethereal.email" &&
                console.log("Preview URL: %s", nodemailer_1.default.getTestMessageUrl(info));
            return {
                messageId: (0, uuid_1.v4)(),
                msg: "Message sent Successfull",
            };
        });
        // create reusable transporter object using the default SMTP transport
        this.notificationTransporter = nodemailer_1.default.createTransport({
            host: this.hostCredentials.hostSMTP,
            port: 587,
            secure: false,
            auth: {
                user: this.hostCredentials.user,
                pass: this.hostCredentials.password,
            },
        });
    }
}
exports.default = NotificationService;
