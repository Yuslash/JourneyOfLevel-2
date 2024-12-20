import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    const title = "Grid List";

    return MaterialApp(

      debugShowCheckedModeBanner: false ,

      title: title,

      home: Scaffold(
        appBar:  AppBar(
          title: const Text(title),
        ),
        body: GridView.count(crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Center(
            child: Text("Item $index",
            style: Theme.of(context).textTheme.headlineSmall,),
          );
        })),
      ),
    );
  }

}