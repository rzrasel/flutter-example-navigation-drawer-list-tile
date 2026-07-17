import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rz Rasel"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Center(
        child: Image.network(
          "https://avatars.githubusercontent.com/u/6184050",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
