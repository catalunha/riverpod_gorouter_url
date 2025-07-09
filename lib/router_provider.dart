import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'a/a_page.dart';
import 'b/b_page.dart';
import 'home/home_page.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter routerConfig(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'apage/:homevalue',
            builder: (context, state) =>
                APage(homeValue: state.pathParameters['homevalue']!),
            routes: [
              GoRoute(
                path: 'bpage/:avalue',
                builder: (context, state) => BPage(
                  homeValue: state.pathParameters['homevalue']!,
                  aValue: state.pathParameters['avalue']!,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
