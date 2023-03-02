import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCoolLandingPage(),
    );
  }
}

class MyCoolLandingPage extends StatelessWidget {
  const MyCoolLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cool Landing Page'),
      ),
      body: Center(
        child: ListView(children: [
          Card(
            child: Column(children: const [
              FlutterLogo(),
              Text('Posted By Miller'),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ]),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
        ]),
      ),
    );
  }
}
