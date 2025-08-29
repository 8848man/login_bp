// 마챗 기본 레이아웃
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/design_system/layouts/lib.dart';
import 'package:login_bp/features/commons/consts/token_keys.dart';
import 'package:login_bp/features/commons/models/auth_token_model.dart';
import 'package:login_bp/features/commons/providers/auth_data_provider.dart';
import 'package:login_bp/router/lib.dart';
import 'package:login_bp/snack_bar_manager/lib.dart';
import 'package:login_bp/storage/storages/secure_storage.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  // floatingActionButton 외부 주입
  final Widget? floatingActionButton;
  // 로그인이 필요한 작업인지
  final bool? needLogin;
  final String? title;
  final List<Widget>? adaptors;
  final List<Widget>? actions;
  final Widget? drawer;
  final Widget? endDrawer;

  const DefaultLayout({
    super.key,
    required this.child,
    this.floatingActionButton,
    this.needLogin,
    this.title,
    this.adaptors = const [],
    this.actions = const [],
    this.drawer,
    this.endDrawer,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // 모바일일 때 분기
    Widget responseWidget = screenWidth <= 760
        ? MobileScaffold(
            floatingActionButton: floatingActionButton,
            title: title,
            actions: <Widget>[
              ...?actions,
            ],
            drawer: drawer,
            endDrawer: endDrawer,
            child: child,
          )
        : WebScaffold(
            floatingActionButton: floatingActionButton,
            title: title,
            actions: <Widget>[
              ...?actions,
            ],
            drawer: drawer,
            endDrawer: endDrawer,
            child: child,
          );

    // 여러 레이아웃 어댑터를 child에 적용
    Widget thisChild = Stack(children: [...adaptors ?? [], responseWidget]);

    // SnackBarManagerConnector로 감싸서 레이아웃 아래에서 스낵바 표현
    // UserChecker로 감싸서 로그인 확인 로직 추가
    return SnackBarManagerConnector(
      child: UserChecker(
        needLogin: needLogin,
        child: thisChild,
      ),
    );
  }
}

class UserChecker extends ConsumerWidget {
  final Widget child;
  final bool? needLogin;

  const UserChecker({
    super.key,
    required this.child,
    this.needLogin = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthTokenModel? authToken = ref.watch(authTokenProvider).value;

    // 로그인 상태가 필요한 경우에만 체크
    if (needLogin == true && authToken == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        ref.read(goRouterProvider).goNamed(RouterPath.login.name);
        // toastification.show(
        //   context: context, // optional if you use ToastificationWrapper
        //   title: const Text('로그인을 하고 이용해주세요!'),
        //   autoCloseDuration: const Duration(seconds: 2),
        // );
        SnackBarCaller().callSnackBar(ref, '로그인이 필요한 페이지입니다!');
      });

      return const SizedBox(); // 빈 위젯 반환
    }

    return child; // 하위 위젯 렌더링
  }
}
