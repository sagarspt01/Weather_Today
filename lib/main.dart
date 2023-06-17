import 'package:flutter/material.dart';

import 'homepage.dart';

bool whenON = false;

bool whenON2 = false;

bool whenON3 = false;

bool whenON4 = false;

num temp = 29;

List<String> items = <String>["rayagada", "muniguda", "burla"];

String dropdownValue = 'muniguda';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
