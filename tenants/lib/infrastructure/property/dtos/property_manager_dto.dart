import 'dart:convert';

import 'package:tenants/domain/property/entity/property_manager_entity.dart';

class PropertyManagerDTO {
  final String? id;
  final String name;
  final String email;
  final String role;
  final String profileImage;
  final String phoneNumber;
  final String placementDate;
  final bool accountStatus;
  final String? password;
  PropertyManagerDTO({
    this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.profileImage,
    required this.phoneNumber,
    required this.placementDate,
    required this.accountStatus,
    this.password,
  });
  PropertyManagerDTO.initial({
    this.id = "",
    this.name = "",
    this.email = "",
    this.password = "",
    this.phoneNumber = "",
    this.profileImage = "",
    this.placementDate = "",
    this.accountStatus = false,
    this.role = "",
  });
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'email': email});
    if (password != null) {
      result.addAll({'password': password});
    }
    result.addAll({'profileImage': profileImage});
    result.addAll({'phoneNumber': phoneNumber});
    result.addAll({'placementDate': placementDate});
    result.addAll({'accountStatus': accountStatus});
    return result;
  }

  factory PropertyManagerDTO.fromMap(Map<String, dynamic> map) {
    return PropertyManagerDTO(
      name: map['name'],
      email: map['email'],
      role: map['role'],
      profileImage: map['profileImage'],
      phoneNumber: map['phoneNumber'],
      placementDate: map['placementDate'],
      accountStatus: map['accountStatus'],
    );
  }
  String toJson() => json.encode(toMap());
  factory PropertyManagerDTO.fromJson(String source) {
    return PropertyManagerDTO.fromMap(
        json.decode(source) as Map<String, dynamic>);
  }

  PropertyManager toEntity() => PropertyManager(
        name: name,
        email: email,
        role: role,
        profileImage: profileImage,
        phoneNumber: phoneNumber,
        placementDate: placementDate,
        accountStatus: accountStatus,
      );

  factory PropertyManagerDTO.fromEntity(PropertyManager entity) =>
      PropertyManagerDTO(
        name: entity.name,
        email: entity.email,
        role: entity.role,
        profileImage: entity.profileImage,
        phoneNumber: entity.phoneNumber,
        placementDate: entity.placementDate,
        accountStatus: entity.accountStatus,
      );

  PropertyManagerDTO copyWith({
    String? id,
    String? name,
    String? email,
    String? role,
    String? profileImage,
    String? phoneNumber,
    String? placementDate,
    bool? accountStatus,
    String? password,
  }) {
    return PropertyManagerDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      placementDate: placementDate ?? this.placementDate,
      accountStatus: accountStatus ?? this.accountStatus,
      password: password ?? this.password,
    );
  }
}
