import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.example.com", // 환경별 분리 가능
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {"Content-Type": "application/json"},
    ),
  );

  // ✅ 예시: 공통 Interceptor 추가
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        print("[DIO] Request: ${options.method} ${options.uri}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print("[DIO] Response: ${response.statusCode}");
        return handler.next(response);
      },
      onError: (error, handler) {
        print("[DIO] Error: ${error.message}");
        return handler.next(error);
      },
    ),
  );

  return dio;
});
