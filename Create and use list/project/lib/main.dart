import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {

    const title = "Basic List";
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(  
          title: const Text(title),
        ),
      ),
    );
  }
}