import 'package:flutter/material.dart';

class StatePrac extends StatefulWidget {
  const StatePrac({super.key});

  @override
  _StatePractState createState() => _StatePractState();

}

class _StatePractState extends State<StatePrac> {

  int _count = 0;

  void increase() {
    setState(() {
      _count++;
    });
  }

    @override
    Widget build(BuildContext context) {
      
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text("Press the button to Increase the count"),
              Text('$_count'),
              const SizedBox( height: 20),
              ElevatedButton(
                onPressed: (){
                  increase();
                },
                child: const Text("Click to Increase"),
              )
            ],
          ),
        ),
      );
    }

}