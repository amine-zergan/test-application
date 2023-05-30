import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp/design/views/not_found_page/error_page.dart';
import 'package:testapp/main.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) =>
        const NotFoundPage(),
  );
}
