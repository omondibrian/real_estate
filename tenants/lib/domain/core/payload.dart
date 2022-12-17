class Payload<T> {
  String? message;
  final String typeName;
  final T data;

  Payload({
    this.message,
    required this.typeName,
    required this.data,
  });


  Payload<T> copyWith({
    String? message,
    String? typeName,
    T? data,
  }) {
    return Payload<T>(
      message: message ?? this.message,
      typeName: typeName ?? this.typeName,
      data: data ?? this.data,
    );
  }
}
