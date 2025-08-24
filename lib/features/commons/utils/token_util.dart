import 'package:login_bp/features/commons/models/auth_token_model.dart';
import 'package:login_bp/storage/interfaces/i_storage.dart';

class TokenUtil {
  final IStorage storage;
  static const _tokenKey = 'authToken';

  TokenUtil({required this.storage});

  Future<AuthTokenModel?> loadToken() async {
    try {
      final jsonMap = await (storage as dynamic).readJson(_tokenKey);
      if (jsonMap == null) return null;
      return AuthTokenModel.fromJson(jsonMap);
    } catch (e) {
      // 로그 찍기 (logger 등)
      return null;
    }
  }

  Future<String?> getAccessToken() async {
    final token = await loadToken();
    return token?.accessToken;
  }

  Future<String?> getRefreshToken() async {
    final token = await loadToken();
    return token?.refreshToken;
  }
}
