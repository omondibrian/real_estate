import 'package:tenants/infrastructure/tenant/dto/tenant_dto.dart';

class AuthDTO {
  final String typeName;
  final String message;
  String? token;
  String? refreshToken;
  TenantDTO? tenant;
  
  AuthDTO({
    required this.typeName,
    required this.message,
    this.token,
    this.refreshToken,
    this.tenant,
  });
  AuthDTO.initial({
    this.message = "",
    this.refreshToken = "",
    this.tenant = const TenantDTO.initial(),
    this.token = "",
    this.typeName = ""

  });

  AuthDTO copyWith({
    String? typeName,
    String? message,
    String? token,
    String? refreshToken,
    TenantDTO? tenant,
  }) {
    return AuthDTO(
      typeName: typeName ?? this.typeName,
      message: message ?? this.message,
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
      tenant: tenant ?? this.tenant,
    );
  }
}
