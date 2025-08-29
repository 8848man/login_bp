import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/features/loading_state/providers/loading_state_provider.dart';

// 로딩 상태를 관리하는 커넥터 위젯
class LoadingConnector extends ConsumerWidget {
  final String? loadingKey;
  final Widget child;

  const LoadingConnector({super.key, this.loadingKey, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 로딩 키가 없으면 child 반환
    if (loadingKey == null) return child;

    // Map<String, bool> 그대로 watch
    final loadingStates = ref.watch(loadingStateProvider);

    // Map에서 key로 직접 조회
    final isLoading = loadingStates[loadingKey!] ?? false;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return child;
  }
}
