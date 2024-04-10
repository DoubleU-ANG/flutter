import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HelloCASA",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabs(),
    );
  }
}
