import 'package:graphql/client.dart';

abstract class BaseDataSource {
  late HttpLink _httpLink;

  BaseDataSource() {
    _httpLink = HttpLink(
      'https://realtors-api.onrender.com/graphql',
      defaultHeaders: {
        'Authorization': 'Bearer token',
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
