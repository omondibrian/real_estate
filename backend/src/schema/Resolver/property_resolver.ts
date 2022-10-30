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
  Query: {
    books: (_: any, args: any, context: any) => {
        console.log(args);
        return books;
      },
  },
};
