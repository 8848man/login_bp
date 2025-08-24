import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/network/interfaces/i_network_connector.dart';
import 'package:login_bp/network/models/response_model.dart';
import 'package:login_bp/network/providers/dio.dart';

/// Provider로 등록
final networkConnectorProvider = Provider<INetworkConnector>((ref) {
  final dio = ref.watch(dioProvider);
  return NetworkConnector(dio);
});

class NetworkConnector implements INetworkConnector {
  final Dio _dio;
  NetworkConnector(this._dio);

  @override
  Future<ResponseModel<T>> get<T>(
    String path, {
    Map<String, dynamic>? query,
    required T Function(Object? json) fromJsonT,
  }) async {
    final response = await _dio.get(path, queryParameters: query);
    return ResponseModel(
      statusCode: response.statusCode ?? 500,
      message: response.statusMessage,
      data: response.data != null ? fromJsonT(response.data) : null,
    );
  }

  @override
  Future<ResponseModel<T>> post<T>(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  }) async {
    final response = await _dio.post(path, data: body);
    return ResponseModel(
      statusCode: response.statusCode ?? 500,
      message: response.statusMessage,
      data: response.data != null ? fromJsonT(response.data) : null,
    );
  }

  @override
  Future<ResponseModel<T>> delete<T>(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  }) async {
    final response = await _dio.delete(path, data: body);
    return ResponseModel(
      statusCode: response.statusCode ?? 500,
      message: response.statusMessage,
      data: response.data != null ? fromJsonT(response.data) : null,
    );
  }
}
