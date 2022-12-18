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

const String createRequestMutation = r'''
      mutation createMessage($type:String,$senderId:String,$body:String){
        sendMessage(body:$body,senderId:$senderId,type:$type) {
          __typename
          ... on SentMessagePayLoad{
            isSent
          }
          ... on ApplicationErrors{
            errorMessage
            stack
          }
        }
      }
 ''';
