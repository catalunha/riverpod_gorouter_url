import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'router_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(ProviderScope(child: const App()));
}

class App extends HookConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routerConfigProvider);

    return MaterialApp.router(
      title: 'Test',
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
