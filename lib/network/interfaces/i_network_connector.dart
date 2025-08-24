import 'package:login_bp/network/models/response_model.dart';

/// 네트워크 커넥터 추상 클래스
abstract class INetworkConnector {
  Future<ResponseModel<T>> get<T>(
    String path, {
    Map<String, dynamic>? query,
    required T Function(Object? json) fromJsonT,
  });

  Future<ResponseModel<T>> post<T>(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  });

  Future<ResponseModel<T>> delete<T>(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  });
}
