import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const title = "List With Spaced Items";

    return MaterialApp(

      title: title,

      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
      ),
    );
  }

}