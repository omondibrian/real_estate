import 'dart:convert';

import '../../core/user_entity.dart';

class RequestEntity {
  final String body;
  final String type;
  final String senderid;
  final String id;
  final UserEntity? sender;
  RequestEntity({
    required this.body,
    required this.type,
    required this.senderid,
    required this.id,
    this.sender,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'body': body});
    result.addAll({'type': type});
    result.addAll({'senderid': senderid});
    result.addAll({'id': id});
    if (sender != null) {
      result.addAll({'sender': sender!.toMap()});
    }

    return result;
  }

  factory RequestEntity.fromMap(Map<String, dynamic> map) {
    return RequestEntity(
      body: map['body'] ?? '',
      type: map['type'] ?? '',
      senderid: map['senderid'] ?? '',
      id: map['id'] ?? '',
      sender: map['sender'] != null ? UserEntity.fromMap(map['sender']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestEntity.fromJson(String source) =>
      RequestEntity.fromMap(json.decode(source));
}
