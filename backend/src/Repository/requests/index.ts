import { IUser } from "../../types";
import { Repository } from "../IRepository";

type IRequest = {
  body: string;
  type: string;
  createdAt: string | Date;
  senderId: string;
  sender?: IUser;
  id?: string;
};
/**
 * @desc contains all requests data operations
 */
export interface IRequestRepository {
  insert(data: IRequest): Promise<IRequest>;
  fetchRequest(id: string): Promise<IRequest | null>;
  fetchRequests(userId: string): Promise<Array<IRequest>>;
}

export class RequestRepository
  extends Repository
  implements IRequestRepository
{
  IrequestProjections = {
    body: true,
    type: true,
    createdAt: true,
    senderId: true,
    sender: true,
  };

  userProjection = {
    id: true,
    email: true,
    name: true,
    password: true,
    phoneNumber: true,
    profileImage: true,
    accountStatus: true,
    role: true,
    placementDate: true,
  }
  async insert(data: IRequest): Promise<IRequest> {
    const results = await this.client.message.create({
      data: {
        body: data.body,
        type: data.type,
        createdAt: data.createdAt,
        senderId: data.senderId,
      },
      select: this.IrequestProjections,
    });
    return {
      ...results,
      createdAt: this.fmtDate(results.createdAt),
      sender: {
        ...results.sender,
        token: results.sender.token + "",
        placementDate: this.fmtDate(results.sender.placementDate),
      },
    };
  }
  async fetchRequest(id: string): Promise<IRequest | null> {
    const results = await this.client.message.findUnique({
      where: {
        id,
      },
      // select: this.IrequestProjections,
      include:{
        sender:true
      }
    });
    if (results === null) return null;
    return {
      ...results,
      createdAt: this.fmtDate(results.createdAt),
      sender: {
        ...results.sender,
        token: results.sender.token + "",
        placementDate: this.fmtDate(results.sender.placementDate),
      },
    };
  }
  async fetchRequests(userId: string): Promise<IRequest[]> {
    const results = await this.client.message.findMany({
      where: {
        senderId: {
          equals: userId,
        },
      },
      // select: this.IrequestProjections,
      include:{
        sender:true
      }
    });

    return results.map((r) => {
      return {
        ...r,
        createdAt: this.fmtDate(r.createdAt),
        sender: {
          ...r.sender,
          accountState: r.sender.accountStatus,
          token: r.sender.token + "",
          placementDate: this.fmtDate(r.sender.placementDate),
        },
      };
    });
  }
}
