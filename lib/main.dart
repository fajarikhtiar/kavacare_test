import 'package:flutter/material.dart';
import 'package:kavacare/pages/home/main_page.dart';
import 'package:kavacare/pages/onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OnBoardPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}
