import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/design_system/lib.dart';
import 'package:login_bp/router/lib.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: const MyApp()));
}

/// App 구성
// class AppConfigurator extends StatelessWidget {
//   final Widget child;
//   const AppConfigurator({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     // 전체 화면 모드 설정
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

//     // ScreenUtilInit으로 화면 크기 기반 scaling 적용
//     return ScreenUtilInit(
//       designSize: const Size(360, 690), // 기본 디자인 기준
//       minTextAdapt: true,
//       builder: (context, childWidget) => childWidget!,
//       child: child,
//     );
//   }
// }

/// MyApp (UI 트리만 담당)
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: MCColors.$color_grey_00),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: goRouter,
    );
  }
}
