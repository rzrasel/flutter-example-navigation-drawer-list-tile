import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_rz_navigation_drawer/dashboard_screen.dart';
import 'package:flutter_rz_navigation_drawer/route/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      /*Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );*/
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
          settings: const RouteSettings(name: AppRoute.dashboard),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Rz Rasel",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
