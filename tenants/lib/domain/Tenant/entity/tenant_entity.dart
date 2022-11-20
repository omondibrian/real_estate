
class TenantEntity {
  final String? id;
  final String name;
  final String email;
  final String role;
  final String profileImage;
  final String phoneNumber;
  final String placementDate;
  final bool accountStatus;
  final String? password;

  TenantEntity({
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

  /// returns a default instance of [TenantEntity] class
  const TenantEntity.initial({
    this.id = '',
    this.password = '',
    this.accountStatus = false,
    this.placementDate = "",
    this.email = "",
    this.name = "",
    this.phoneNumber = '',
    this.profileImage = '',
    this.role = ''
  });

  /// returns a copy of [TenantEntity]
  TenantEntity copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? role,
    String? profileImage,
    String? phoneNumber,
    String? placementDate,
    bool? accountStatus
    
  }) {
    return TenantEntity(
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

enum UserProfileFields {
  name,
  email,
  role,
  phoneNumber,
  longitude,
  latitude,
  selectedAddress,
  image,
  address
}
