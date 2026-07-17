import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Favourite"),
      backgroundColor: Colors.green,
    ),
    //drawer: NavigationDrawer(),
  );
}
