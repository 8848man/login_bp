import 'package:login_bp/features/login/interfaces/i_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/features/commons/models/auth_token_model.dart';
import 'package:login_bp/features/login/models/login_data_model.dart';
import 'package:login_bp/network/connectors/network_connector.dart';
import 'package:login_bp/network/interfaces/i_network_connector.dart';

final loginRepositoryProvider =
    Provider<IAuthRepository<LoginDataModel, AuthTokenModel>>((ref) {
  final connector = ref.read(networkConnectorProvider);
  return AuthRepository(connector: connector, ref: ref);
});

class AuthRepository
    implements IAuthRepository<LoginDataModel, AuthTokenModel> {
  final INetworkConnector connector;
  final Ref ref;

  AuthRepository({required this.connector, required this.ref});

  @override
  Future<AuthTokenModel> login(LoginDataModel data) async {
    final response = await connector.post<Map<String, dynamic>>(
      "/auth/login",
      body: data.toJson(),
      fromJsonT: (json) => json as Map<String, dynamic>,
    );

    final responseData = response.data ?? {};

    // AuthTokenModel로 변환
    return AuthTokenModel(
      accessToken: responseData["accessToken"] as String?,
      refreshToken: responseData["refreshToken"] as String?,
    );
  }

  @override
  Future<bool> logout() async {
    final response = await connector.post<Map<String, dynamic>>(
      "/auth/logout",
      fromJsonT: (json) => json as Map<String, dynamic>,
    );

    // 성공 여부 판단 (예: 200번이면 true)
    return response.statusCode == 200;
  }
}
