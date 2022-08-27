import 'package:flutter/material.dart';
import 'package:signal_project/pages/login_page.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      home: LoginPage(),
    );
  }
}
