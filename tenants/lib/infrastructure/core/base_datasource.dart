import 'package:graphql/client.dart';

abstract class BaseDataSource {
  late HttpLink _httpLink;
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MzdhNGZkNWJmOTNhOGY0ODQ4ZjEyMDEiLCJpYXQiOjE2NzEzNzg4ODYsImV4cCI6MTY3MTM4MDY4Nn0.3E0Q-smos6LlVukcobUvF0y2SKoduhG8SSjAqYe3NKg";
  BaseDataSource() {
    _httpLink = HttpLink(
      'https://realtors-api.onrender.com/graphql',
      defaultHeaders: {
        'Authorization': 'Bearer $token',
      },
    );
  }

  /// subscriptions must be split otherwise `HttpLink` will. swallow them
  // if (websocketEndpoint != null){
  //   final _wsLink = WebSocketLink(websockeEndpoint);
  //   _link = Link.split((request) => request.isSubscription, _wsLink, _httpLink);
  // }

  GraphQLClient getClient() {
    return GraphQLClient(
      /// pass the store to the cache for persistence
      cache: GraphQLCache(),
      link: _httpLink,
    );
  }
}
