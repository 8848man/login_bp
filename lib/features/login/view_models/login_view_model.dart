import 'package:flutter/material.dart';
import 'package:login_bp/features/commons/models/auth_token_model.dart';
import 'package:login_bp/features/loading_state/providers/loading_state_provider.dart';
import 'package:login_bp/features/login/models/login_data_model.dart';
import 'package:login_bp/features/login/models/login_page_model.dart';
import 'package:login_bp/features/login/repository/login_repository.dart';
import 'package:login_bp/router/lib.dart';
import 'package:login_bp/snack_bar_manager/lib.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_view_model.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  @override
  LoginPageModel build() {
    return initData();
  }

  LoginPageModel initData() {
    return const LoginPageModel();
  }

  Future<void> login({String? loadingKey}) async {
    await ref
        .read(loadingStateProvider.notifier)
        .runWithLoading(loadingKey ?? 'login', () async {
      try {
        final repository = ref.read(loginRepositoryProvider);

        final LoginDataModel loginData = LoginDataModel(
          emailText: emailController.text,
          pwdText: pwdController.text,
        );
        // 로그인 로직 실행
        final AuthTokenModel isLogined = await repository.login(loginData);

        // 로그인 성공 로직
        if (isLogined.accessToken != null) {
          // 페이지 이동
          // 로그인 정보에 따라
          // 데이터를 가져오기 위해
          // 토큰 상태 초기화

          final router = ref.read(goRouterProvider);
          router.goNamed(RouterPath.home.name);
        } else {
          state = state.copyWith(
            emailErrorText: '이메일 확인',
            pwdErrorText: '이메일 혹은 비밀번호를 다시 한번 확인해주세요.',
          );
        }
      } catch (e) {
        SnackBarCaller().callSnackBar(
          ref,
          '알 수 없는 이유로 로그인에 실패했습니다. 개발자에게 문의해주세요.',
        );
      }
    });
  }
}
