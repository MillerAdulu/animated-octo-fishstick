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
        child: ListView(children: const [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Miller Adulu'),
            subtitle: Text(
              'Please come with sugar and milk',
            ),
            trailing: Text('18:53'),
          ),
          ListTile(
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
