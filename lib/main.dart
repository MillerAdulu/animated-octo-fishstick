import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_app/message.dart';

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

class MyCoolLandingPage extends StatefulWidget {
  const MyCoolLandingPage({super.key});

  @override
  State<MyCoolLandingPage> createState() => _MyCoolLandingPageState();
}

class _MyCoolLandingPageState extends State<MyCoolLandingPage> {
  final messages = [
    Message('Miller Adulu', 'Please come with sugar and milk.'),
    Message('Florence Atieno', 'Please prepare a poster.'),
    Message('Kip', 'Please do some cool stuff.'),
    Message('Douglas', 'Please do some other cool stuff.'),
  ];

  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cool Landing Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text(messages[index].name),
                subtitle: Text(messages[index].message),
              ),
              itemCount: messages.length,
            ),
           const Spacer(),
            TextField(
              controller: messageController,
              decoration: const InputDecoration(
                hintText: 'Enter your message',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          messages.add(
            Message(
              'New Message from Box',
              messageController.text,
            ),
          );
          messageController.clear();

          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
