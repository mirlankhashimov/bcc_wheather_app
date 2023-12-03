import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Title',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Bcc second home work"),
            ),
            body: const HomeScreen())
    );
  }
}
