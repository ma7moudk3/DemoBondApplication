library app_router;

import 'package:auto_route/auto_route.dart';
import 'package:bond/features/auth/auth.dart';
import 'package:bond/features/update_app/routes.dart';
import 'package:bond/routes/guards/auth_guard.dart';
import 'package:bond/routes/router_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:bond_core/bond_core.dart';

import '../features/home/presentation/page/home_page.dart';
import '../features/home/routes.dart';

export 'guards/auth_guard.dart';
export 'observers/navigator_observers.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    ...homeRoute,
    ...authRoutes,
    ...integrationsRoutes,
    //AutoRoute(page: NotificationsPage, guards: [AuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter(AuthGuard authGuard) : super(authGuard: authGuard);
}

AppRouter get appRouter => sl<AppRouter>();
