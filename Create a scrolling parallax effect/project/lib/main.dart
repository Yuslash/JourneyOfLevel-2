import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ParallaxRecipe extends StatelessWidget {
  
  const ParallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 204, 246),
        body: Center(
          child: Text("Hello world of the year"),
        ),
      ),
    );
  }

}

