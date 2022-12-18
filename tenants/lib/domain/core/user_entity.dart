import 'dart:convert';

/// base user entity
class UserEntity {
  String? id;
  final String name;
  final String imageUrl;
  final String phoneNumber;
  final String contact;

  UserEntity(this.name, this.imageUrl, this.phoneNumber, this.contact, this.id);

  UserEntity copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? phoneNumber,
    String? contact,
  }) {
    return UserEntity(
      id ?? this.id ?? '',
      name ?? this.name,
      imageUrl ?? this.imageUrl,
      phoneNumber ?? this.phoneNumber,
      contact ?? this.contact,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'name': name});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'contact': contact});

    return result;
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      map['id'],
      map['name'] ?? '',
      map['imageUrl'] ?? '',
      map['phoneNumber'] ?? '',
      map['contact'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) =>
      UserEntity.fromMap(json.decode(source));
}
