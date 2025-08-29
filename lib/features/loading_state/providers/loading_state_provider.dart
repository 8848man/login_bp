import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. StateNotifier 정의
class LoadingStates extends StateNotifier<Map<String, bool>> {
  LoadingStates() : super({});

  void setLoading(String key, bool isLoading) {
    state = {
      ...state,
      key: isLoading,
    };
  }

  bool isLoading(String key) => state[key] ?? false;

  // 2. Future wrapper
  Future<T> runWithLoading<T>(String key, Future<T> Function() action) async {
    setLoading(key, true);
    try {
      final result = await action();
      return result;
    } finally {
      setLoading(key, false);
    }
  }
}

// 3. Provider 선언
final loadingStateProvider =
    StateNotifierProvider<LoadingStates, Map<String, bool>>((ref) {
  return LoadingStates();
});
