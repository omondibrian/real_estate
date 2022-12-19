import { RequestRepository } from "../../Repository/requests";

const repo = new RequestRepository();

export const messageResolver = {
  DefaultResponseResult: {
    __resolveType(obj: any) {
      if (obj.errorMessage) {
        return "ApplicationErrors";
      }

      if (obj.message) {
        return "DefaultResponse";
      }
      return null;
    },
  },
  MessageTransmissionResponse: {
    __resolveType(obj: any) {
      if (obj.errorMessage) {
        return "ApplicationErrors";
      }

      if (obj.isSent) {
        return "SentMessagePayLoad";
      }
      return null;
    },
  },
  Query: {
    messages: async (_: any, args: { userId: string }, context: any) => {
      try {
        const messages = await repo.fetchRequests(args.userId);
        return {
          message: "Current Messages",
          payload: messages,
        };
      } catch (error: any) {
        return {
          errorMessage: error.message,
          stack: error.stack,
        };
      }
    },
  },
  Mutation: {
    sendMessage: async (
      _: any,
      args: {
        id: string;
        senderId: string;
        body: string;
        type: string;
      }
    ) => {
      try {
        const messages = await repo.insert({
          ...args,
          createdAt: new Date(Date.now()),
        });
        return {
          message: "New Message sent",
          isSent: messages ? true : false,
        };
      } catch (error: any) {
        return {
          errorMessage: error.message,
          stack: error.stack,
        };
      }
    },
  },
  Subscription: {
    messageSent: async (
      parent: any,
      args: { messageId: string },
      context: any
    ) => {},
  },
};
