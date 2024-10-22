import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(items: List<String>.generate(1000, (i) => 'item $i')),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    const title = "Work with Long List";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            backgroundColor: Colors.green,
          ),
          body: ListView.builder(
            itemCount: items.length,
            prototypeItem: ListTile(
              title: Text(items.first),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          )),
    );
  }
}
