import 'package:flutter/material.dart';
import 'package:newp/tabs/tabs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: const Scaffold(
        body: Tabs(),
      ),
    );
  }
}




