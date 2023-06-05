import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp/design/routes/route_name.dart';
import 'package:testapp/design/views/errors/error_page.dart';
import 'package:testapp/design/views/home/home_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: RouteName.homeRoute,
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) =>
        const NotFoundPage(),
    redirect: (context, state) {
      return null;
    },
  );
}
