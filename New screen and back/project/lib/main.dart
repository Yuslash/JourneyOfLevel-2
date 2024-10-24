import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Navigation Basics",
    home: FirstRoute(),  
  ),);
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation One"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecoundRoute(),),);
        }
        , child: const Text("Open Route")),
      ),
    );
  }

}

class SecoundRoute extends StatelessWidget {
  
  const SecoundRoute({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Navigation"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Go Back!")),
      ),
    );
  }

}