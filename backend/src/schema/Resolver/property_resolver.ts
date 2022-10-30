import { MyContext } from "../..";

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
    fetchPublicListings: async () => {},
    myListings: async () => {},
  },
  Mutation: {
    createPropertyListing: async (_: any, args: any, ctx: MyContext) => {},
    createUnit: async (_: any, args: any, ctx: MyContext) => {},
    updateUnit: async (_: any, args: any, ctx: MyContext) => {},
    updatePropertyListing: async (_: any, args: any, ctx: MyContext) => {},
    occupyUnit: async (_: any, args: any, ctx: MyContext) => {},
    leaveUnit: async (_: any, args: any, ctx: MyContext) => {},
    deleteUnit: async (_: any, args: any, ctx: MyContext) => {},
    deletePropertyListing: async (_: any, args: any, ctx: MyContext) => {},
  },
};
