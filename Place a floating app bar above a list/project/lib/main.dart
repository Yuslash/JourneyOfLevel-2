import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    
    const title = "Floating App Bar";

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Colors.cyan,
        ),
        body: const Center(
          child: Text("How are you my friend"),
        ),
      ),
    );
  }

}