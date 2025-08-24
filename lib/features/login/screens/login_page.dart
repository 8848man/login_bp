part of '../lib.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 로그인됐는데 진입 시도시 홈으로 이동
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   if (FirebaseAuth.instance.currentUser != null) {
    //     ref.read(goRouterProvider).goNamed(RouterPath.home.name);
    //     SnackBarCaller().callSnackBar(ref, '이미 로그인된 상태입니다.');
    //   }
    // });

    return const DefaultLayout(child: LoginBundle());
  }
}
