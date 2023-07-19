// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;
  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<bool>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    UpdateAppRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateAppRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UpdateAppPage(
          key: args.key,
          message: args.message,
        ),
      );
    },
    SoftUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<SoftUpdateRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SoftUpdatePage(
          key: args.key,
          message: args.message,
        ),
        customRouteBuilder: RouterHelpers.modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        RouteConfig(
          UpdateAppRoute.name,
          path: 'update_app',
        ),
        RouteConfig(
          SoftUpdateRoute.name,
          path: '/soft-update-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [UpdateAppPage]
class UpdateAppRoute extends PageRouteInfo<UpdateAppRouteArgs> {
  UpdateAppRoute({
    Key? key,
    required String message,
  }) : super(
          UpdateAppRoute.name,
          path: 'update_app',
          args: UpdateAppRouteArgs(
            key: key,
            message: message,
          ),
        );

  static const String name = 'UpdateAppRoute';
}

class UpdateAppRouteArgs {
  const UpdateAppRouteArgs({
    this.key,
    required this.message,
  });

  final Key? key;

  final String message;

  @override
  String toString() {
    return 'UpdateAppRouteArgs{key: $key, message: $message}';
  }
}

/// generated route for
/// [SoftUpdatePage]
class SoftUpdateRoute extends PageRouteInfo<SoftUpdateRouteArgs> {
  SoftUpdateRoute({
    Key? key,
    required String message,
  }) : super(
          SoftUpdateRoute.name,
          path: '/soft-update-page',
          args: SoftUpdateRouteArgs(
            key: key,
            message: message,
          ),
        );

  static const String name = 'SoftUpdateRoute';
}

class SoftUpdateRouteArgs {
  const SoftUpdateRouteArgs({
    this.key,
    required this.message,
  });

  final Key? key;

  final String message;

  @override
  String toString() {
    return 'SoftUpdateRouteArgs{key: $key, message: $message}';
  }
}
