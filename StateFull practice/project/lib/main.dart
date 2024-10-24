import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});
 
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<MyHomePage> {
  String myText = "hello";

  void changeText() {
    setState(() {
      myText = "hello worlld";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(myText),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                changeText();
              },
              child: const Text("Click"),
            )
          ],
          
        ),        
      ),
    );
  }

}

