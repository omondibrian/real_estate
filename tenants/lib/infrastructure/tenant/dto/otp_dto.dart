class OtpDTO {
  final String typename;
  final String message;
  String? token;
  OtpDTO({
    required this.typename,
    required this.message,
    this.token,
  });

  OtpDTO.initial({this.message = "", this.token = "", this.typename = ""});

  OtpDTO copyWith({
    String? typename,
    String? message,
    String? token,
  }) {
    return OtpDTO(
      typename: typename ?? this.typename,
      message: message ?? this.message,
      token: token ?? this.token,
    );
  }
}
