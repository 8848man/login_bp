import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_bp/features/loading_state/providers/loading_state_provider.dart';

extension LoadingWrapper on WidgetRef {
  Future<T> withLoading<T>(
    String key,
    Future<T> Function() action,
  ) async {
    final notifier = read(loadingStateProvider.notifier);
    notifier.setLoading(key, true); // 시작
    try {
      return await action(); // 실제 작업 실행
    } finally {
      notifier.setLoading(key, false); // 종료
    }
  }
}
