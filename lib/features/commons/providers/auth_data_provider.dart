import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/features/commons/consts/token_keys.dart';
import 'package:login_bp/features/commons/models/auth_token_model.dart';
import 'package:login_bp/storage/interfaces/i_storage.dart';
import 'package:login_bp/storage/storages/secure_storage.dart';

//
final authTokenProvider = FutureProvider<AuthTokenModel?>((ref) async {
  final IStorage secureStorage = ref.read(secureStorageServiceProvider);

  final String? accessToken = await secureStorage.read(ACCESS_TOKEN_KEY);
  final String? refreshToken = await secureStorage.read(REFRESH_TOKEN_KEY);

  if (accessToken == null && refreshToken == null) return null;

  return AuthTokenModel(
    accessToken: accessToken,
    refreshToken: refreshToken,
  );
});
