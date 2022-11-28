class PropertyManager {
  final String? id;
  final String name;
  final String email;
  final String role;
  final String profileImage;
  final String phoneNumber;
  final String placementDate;
  final bool accountStatus;
  final String? password;
  PropertyManager({
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

  PropertyManager copyWith({
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
    return PropertyManager(
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
