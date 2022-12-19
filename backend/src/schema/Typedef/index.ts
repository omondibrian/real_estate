import messageTypeDef from "./messages.schema";
import PropertyTypeDefs from "./property.schema";
import UserTypeDefs from "./user.schema";

const typeDefs = [UserTypeDefs, PropertyTypeDefs, messageTypeDef];

export default typeDefs;
