 const messageTypeDef = `#graphql
 type Message {
    id: String
    sender: User
    body: String
    createdAt: String
    type: String
  }

  type DefaultResponse{
      message: String!,
      payload:[Message]!
    }

  type ApplicationErrors{
      errorMessage: String!,
      stack: String
  }
  type SentMessagePayLoad{
    isSent:Boolean!
    message: String!
  }
  union DefaultResponseResult = DefaultResponse | ApplicationErrors
  union MessageTransmissionResponse = SentMessagePayLoad | ApplicationErrors
  type Query {
    messages(userId: String): DefaultResponseResult!
  }
  type Mutation {
    sendMessage(
      type: String
      senderId: String
      body: String
    ): MessageTransmissionResponse
  }
  type Subscription {
    messageSent(messageId: String): DefaultResponseResult!
  }
`;


export default messageTypeDef;