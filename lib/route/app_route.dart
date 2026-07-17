import 'package:flutter/material.dart';
import 'package:flutter_rz_navigation_drawer/dashboard_screen.dart';
import 'package:flutter_rz_navigation_drawer/favourite_screen.dart';
import 'package:flutter_rz_navigation_drawer/splash_screen.dart';
import 'package:flutter_rz_navigation_drawer/update_screen.dart';
import 'package:flutter_rz_navigation_drawer/user_screen.dart';

class AppRoute {
  static const splash = '/';
  static const dashboard = '/dashboard';
  static const settings = '/settings';
  static const update = '/update';
  static const favourite = '/favourite';
  static const userPage = '/userPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: routeSettings,
        );

      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
          settings: routeSettings,
        );

      case settings:
        return MaterialPageRoute(
          builder: (_) => const UpdateScreen(),
          settings: routeSettings,
        );

      case update:
        return MaterialPageRoute(
          builder: (_) => const UpdateScreen(),
          settings: routeSettings,
        );

      case favourite:
        return MaterialPageRoute(
          builder: (_) => const FavouriteScreen(),
          settings: routeSettings,
        );

      case userPage:
        return MaterialPageRoute(
          builder: (_) => const UserScreen(),
          settings: routeSettings,
        );

      default:
        throw Exception('Unknown route: ${routeSettings.name}');
    }
  }
}

/*
class AppRoute {
  static const dashboard = '/dashboard';
  static const settings = '/settings';

  static Route<dynamic> dashboardRoute() {
    return MaterialPageRoute(
      builder: (_) => const DashboardScreen(),
      settings: const RouteSettings(name: dashboard),
    );
  }

  static Route<dynamic> settingsRoute() {
    return MaterialPageRoute(
      builder: (_) => const SettingsScreen(),
      settings: const RouteSettings(name: settings),
    );
  }
}*/
