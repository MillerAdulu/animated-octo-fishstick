import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_app/user.dart';

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
  // Init State always runs once when the widget is build

  final dio = Dio();

  bool isLoading = false;

  var users = <User>[];

  @override
  void initState() {
    super.initState();

    getUsers();
  }

  getUsers() async {
    isLoading = true;
    await dio.get('https://jsonplaceholder.ir/users').then((response) {
      for (var onlineUser in response.data) {
        users.add(User.fromJson(onlineUser));
      }

      isLoading = false;
      setState(() {});
    });
  }

  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cool Landing Page'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ListTile(
                          leading: SvgPicture.network(users[index].avatar),
                          title: Text(users[index].username),
                          subtitle: Text(users[index].email),
                        ),
                        itemCount: users.length,
                      ),
                    ],
                  ),
                ),
              ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     messages.add(
      //       Message(
      //         'New Message from Box',
      //         messageController.text,
      //       ),
      //     );
      //     messageController.clear();

      //     setState(() {});
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
