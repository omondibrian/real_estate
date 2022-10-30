const PropertyTypeDefs = `#graphql
    type Book {
      title: String
      author: String
    }

    type Tenant {
        id:ID
        user:User
    }

    type PropertyManager{
        id:ID
        user:User
    }

    type Property{
        id:ID
        name:String
        imageUrl:String
        phoneNumber:String
        contact:String
        manager:PropertyManager
        propertyUnits:[Unit]
    }

    type Unit {
        id:ID
        room:String
        imageUrl:String
        contact:String
        state:Boolean
        currentTenant:Tenant
        livingSpace:String
        ammenities:[String!]
        propertyId:String
    }

    type Query {
      books: [Book]
      #fetch unoccupied listings
      fetchPublicListings:[Property!]!
      myListings:[Property!]!
    }

    input PropertyInput{
        name:String!
        imageUrl:Upload!
        phoneNumber:String!
        contact:String!  
        lat:Number!
        long:Number!
    }
     
    input UnitInput{
        room:String!
        imageUrl:Upload!
        contact:String! 
        state:Boolean!
        livingSpace:String!
        type:String!
        baths:Number!
        bedrooms:Number!
        ammenities:[String]!
        propertyId:String!
     }
    input UnitUpdates{
        room:String!
    }
 
    input OccupyRequestInput{
        unitID:String!
    }

    type PropertyPayload {
        property:Property!
        message:String!
    }

    type UnitPayload{
        unit:Unit!
        message:String!
    }

    union PropertyResults = PropertyPayload | ApplicationErrors
    union UnitResults = UnitPayload | ApplicationErrors

    type Mutation{
        createPropertyListing(input:PropertyInput!):PropertyResults!
        createUnit(input:UnitInput!):UnitResults!
        updateUnit(input:UnitUpdates!):UnitResults!
        updatePropertyListing(input:PropertyInput!):PropertyResults!
        occupyUnit(input:OccupyRequestInput!):UnitResults!
        leaveUnit:UnitResults!
        deleteUnit(id:ID!):UnitResults!
        deletePropertyListing(id:ID!):PropertyResults!
    }
`;

export default PropertyTypeDefs;
