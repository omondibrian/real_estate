const PropertyTypeDefs = `#graphql
    type Book {
      title: String
      author: String
    }

    type Query {
      books: [Book]
    }
`;

export default PropertyTypeDefs;
