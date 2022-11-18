import 'dart:convert';

import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';

class TenantDTO {
  final String? id;
  final String name;
  final String email;
  final String role;
  final String profileImage;
  final String phoneNumber;
  final String placementDate;
  final bool accountStatus;
  final String? password;

  TenantDTO({
    this.id,
    required this.name,
    required this.email,
    required this.role,
    this.password,
    required this.profileImage,
    required this.phoneNumber,
    required this.placementDate,
    required this.accountStatus,
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

  factory TenantDTO.fromMap(Map<String, dynamic> map) {
    return TenantDTO(
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

  factory TenantDTO.fromJson(String source) {
    return TenantDTO.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  TenantEntity toEntity() => TenantEntity(
        name: name,
        email: email,
        role: role,
        profileImage: profileImage,
        phoneNumber: phoneNumber,
        placementDate: placementDate,
        accountStatus: accountStatus,
      );

  factory TenantDTO.fromEntity(TenantEntity entity) => TenantDTO(
        name: entity.name,
        email: entity.email,
        role: entity.role,
        profileImage: entity.profileImage,
        phoneNumber: entity.phoneNumber,
        placementDate: entity.placementDate,
        accountStatus: entity.accountStatus,
      );

  /// returns a copy of [TenantDTO]
  TenantDTO copyWith(
      {String? id,
      String? name,
      String? email,
      String? password,
      String? role,
      String? profileImage,
      String? phoneNumber,
      String? placementDate,
      bool? accountStatus}) {
    return TenantDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      placementDate: placementDate ?? this.placementDate,
      accountStatus: accountStatus ?? this.accountStatus,
    );
  }
}
