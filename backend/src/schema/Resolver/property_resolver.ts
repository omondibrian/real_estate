import { MyContext } from "../..";
import type {
  PropertyInput,
  PropertyResults,
  UnitInput,
  UnitPayload,
} from "../../types";
const books = [
  {
    title: "The Awakening",
    author: "Kate Chopin",
  },
  {
    title: "City of Glass",
    author: "Paul Auster",
  },
];
export const PropertyResolver = {
  PropertyResults: {
    __resolveType(obj: any) {
      if (obj.errorMessage) {
        return "ApplicationErrors";
      }

      if (obj.property) {
        return "Property";
      }
      return null;
    },
  },
  UnitResults: {
    __resolveType(obj: any) {
      if (obj.errorMessage) {
        return "ApplicationErrors";
      }

      if (obj.unit) {
        return "Unit";
      }
      return null;
    },
  },
  Query: {
    books: (_: any, args: any, context: any) => {
      console.log(args);
      return books;
    },
    fetchPublicListings: async (): Promise<PropertyResults> => {
      throw new Error("Method not implemented.");
    },
    myListings: async (): Promise<PropertyResults> => {
      throw new Error("Method not implemented.");
    },
  },
  Mutation: {
    createPropertyListing: async (
      _: any,
      args: PropertyInput,
      ctx: MyContext
    ): Promise<PropertyResults> => {
      throw new Error("Method not implemented.");
    },
    createUnit: async (
      _: any,
      args: UnitInput,
      ctx: MyContext
    ): Promise<UnitPayload> => {
      throw new Error("Method not implemented.");
    },
    updateUnit: async (
      _: any,
      args: { room: string },
      ctx: MyContext
    ): Promise<UnitPayload> => {
      throw new Error("Method not implemented.");
    },
    updatePropertyListing: async (
      _: any,
      args: PropertyInput,
      ctx: MyContext
    ): Promise<PropertyResults> => {
      throw new Error("Method not implemented.");
    },
    occupyUnit: async (
      _: any,
      args: { unitID: string },
      ctx: MyContext
    ): Promise<UnitPayload> => {
      throw new Error("Method not implemented.");
    },
    leaveUnit: async (
      _: any,
      args: any,
      ctx: MyContext
    ): Promise<UnitPayload> => {
      throw new Error("Method not implemented.");
    },
    deleteUnit: async (
      _: any,
      args: { id: string },
      ctx: MyContext
    ): Promise<UnitPayload> => {
      throw new Error("Method not implemented.");
    },
    deletePropertyListing: async (
      _: any,
      args: { id: string },
      ctx: MyContext
    ): Promise<PropertyResults> => {
      throw new Error("Method not implemented.");
    },
  },
};
