import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String myText = "Hello wolrd";
  int _count = 0;
  Color _backgroundColor =  Colors.white;

  void changeText() {
    setState(() {
      myText = "hello solider";
    });
  }

  void increase() {
    setState(() {
      _count++;
      _backgroundColor = _count < 5 ? Colors.amber : Colors.lime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(myText),
            Text('$_count'),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              increase();
              changeText();
            }, child: const Text("increase"))
          ],
        ),
      ),
    );
  }
}