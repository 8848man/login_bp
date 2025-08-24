class ResponseModel<T> {
  final int statusCode;
  final String? message;
  final T? data;

  const ResponseModel({required this.statusCode, this.message, this.data});

  /// JSON → ResponseModel 변환
  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return ResponseModel(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String?,
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  /// ResponseModel → JSON 변환
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return {
      'statusCode': statusCode,
      'message': message,
      'data': data != null ? toJsonT(data as T) : null,
    };
  }

  @override
  String toString() =>
      'ResponseModel(statusCode: $statusCode, message: $message, data: $data)';
}
