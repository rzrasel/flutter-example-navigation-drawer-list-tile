import 'package:flutter/material.dart';
import 'package:flutter_rz_navigation_drawer/drawer/pro_navigation_drawer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Rz Rasel"),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: ProNavigationDrawer(),
    );
  }
}
