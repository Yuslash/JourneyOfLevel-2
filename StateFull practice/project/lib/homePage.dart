
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String sampleText = "hello wolrd to the state";

  void changeText() {
    setState(() {
      sampleText = "how are you State";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(sampleText),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                changeText();
              },
              child: const Text("click to change"),
            )
          ],
        ),
      ),
    );
  }

}