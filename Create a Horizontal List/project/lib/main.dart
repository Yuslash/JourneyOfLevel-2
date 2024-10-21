import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) 
  {
      const title = "Horizontal Scrolling";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 200,
                color: Colors.red,
              ),
              Container(
                width: 200,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
