import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingConnector extends ConsumerWidget {
  final String? loadingKey;
  const LoadingConnector({super.key, this.loadingKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
