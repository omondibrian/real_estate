const String fetchListings = r''' 
query FetchListings {
  fetchPublicListings {
    __typename
    ... on ListingsPayload {
      message
      properties {
        id
        name
        imageUrl
        phoneNumber
        contact
        lat
        long
        manager {
          id
          user {
            id
            name
            email
            profileImage
            role
            placementDate
            accountState
          }
        }
        propertyUnits {
          id
          room
          imageUrl
          contact
          state
          livingSpace
          ammenities
          propertyId
          propertyOverview
          pricePerMonth
        }
      }
    }
    ... on ApplicationErrors {
      errorMessage
      stack
    }
  }
}
''';