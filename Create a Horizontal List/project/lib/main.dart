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
      debugShowCheckedModeBanner: false,
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
                padding: const EdgeInsets.all(20),
                width: 200,
                color: Colors.blue,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("just testing is it wokring or not",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold  ),)
                  ],
                ),
              ),
              Container(
                width: 200,
                color: const Color.fromARGB(255, 105, 64, 44),
              ),
              Container(
                width: 200,
                color: const Color.fromARGB(255, 64, 209, 59),
              ),
              Container(
                width: 200,
                color: const Color.fromARGB(255, 117, 59, 209),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
