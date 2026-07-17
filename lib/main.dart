import 'package:flutter/material.dart';
import 'package:flutter_rz_navigation_drawer/route/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Rz Rasel',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        drawerTheme: const DrawerThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        navigationDrawerTheme: const NavigationDrawerThemeData(
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      //home: const SplashScreen(),
      onGenerateRoute: AppRoute.generateRoute,
      initialRoute: AppRoute.splash,
    );
  }
}