part of '../lib.dart';

class LoginBundleHeader extends StatelessWidget {
  const LoginBundleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '환영합니다',
          style: TextStyle(
              color: MCColors.$color_blue_70,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        Text(
          '로그인 하시겠습니까?',
          style: TextStyle(
              color: MCColors.$color_blue_70,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
