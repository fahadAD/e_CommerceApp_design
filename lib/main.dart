import 'package:flutter/material.dart';
import 'package:practiseuntitled4/Home/main1.dart';
import 'package:practiseuntitled4/Home/main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favourite(),
    );
  }
}
