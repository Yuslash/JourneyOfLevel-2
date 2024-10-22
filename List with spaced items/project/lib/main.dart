import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const title = "List With Spaced Items";

    const items = 7;

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: title,

      home: Scaffold(
        appBar: AppBar(
          title: const Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          backgroundColor: const Color.fromARGB(255, 158, 32, 255),
          centerTitle: true,
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(items, (index) => ItemWidget(text: 'item $index')),
              ),
              )
          );
        }),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text),),
      ),
    );
  }

}