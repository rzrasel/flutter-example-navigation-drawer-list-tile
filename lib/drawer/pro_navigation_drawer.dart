import 'package:flutter/material.dart';
import 'package:flutter_rz_navigation_drawer/route/app_route.dart';

class ProNavigationDrawer extends StatelessWidget {
  const ProNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [buildHeader(context), buildMenuItem(context)],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue.shade700,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).pushNamed(AppRoute.userPage);
      },
      child: Container(
        //color: Colors.blue.shade700,
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/6184050"),
            ),
            Text("Rz Rasel", style: TextStyle(fontSize: 28, color: Colors.white)),
            Text(
              "rz-rasel@rzrasel.com",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );

  Widget buildMenuItem(BuildContext context) => Container(
    padding: EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text("Home"),
          onTap: () {
            Navigator.popUntil(
              context,
              ModalRoute.withName(AppRoute.dashboard),
            );
            /*Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const DashboardScreen()),
              (route) => false,
            );*/
          },
          /*onTap: ()=> Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context)=> DashboardScreen()
          )),*/
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favorite"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(AppRoute.favourite);
          },
        ),
        ListTile(
          leading: Icon(Icons.workspaces_outline),
          title: Text("Workflow"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text("Update"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(AppRoute.update);
          },
        ),
        Divider(color: Colors.black54),
        ListTile(
          leading: Icon(Icons.account_tree_outlined),
          title: Text("Account"),
          onTap: () {},
        ),
      ],
    ),
  );
}
