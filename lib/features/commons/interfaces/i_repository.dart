import 'package:login_bp/network/interfaces/i_network_connector.dart';
import 'package:login_bp/network/models/response_model.dart';

/// IRepository 추상화
abstract class IRepository<T> {
  final INetworkConnector connector;

  IRepository(this.connector);

  /// 단일 데이터 조회
  Future<ResponseModel<T>> getItem(
    String path, {
    Map<String, dynamic>? query,
    required T Function(Object? json) fromJsonT,
  });

  /// 리스트 데이터 조회
  Future<ResponseModel<List<T>>> getList(
    String path, {
    Map<String, dynamic>? query,
    required T Function(Object? json) fromJsonT,
  });

  /// 데이터 생성
  Future<ResponseModel<T>> createItem(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  });

  /// 데이터 삭제
  Future<ResponseModel<T>> deleteItem(
    String path, {
    Map<String, dynamic>? body,
    required T Function(Object? json) fromJsonT,
  });
}
