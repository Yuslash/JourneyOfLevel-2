import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 0, 67),
      appBar: AppBar(
        title: const Text("Search Page"),
      ),
      body: const Center(
        child:  Text("this is search page", style: TextStyle(color: Colors.white),),
      ),
    );
  }

}