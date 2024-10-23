import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 25, 12, 34);
const Color appBar = Color.fromARGB(255, 161, 29, 255);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: darkBlue,
            appBar: AppBar(
              backgroundColor: appBar,
              bottom: const TabBar(
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.directions_transit,
                    color: Colors.white,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.directions_bike,
                    color: Colors.white,
                  )),
                ],
              ),
              title: const Text(
                "Tabs Demo",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: Text(
                    "This is Car Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    "This is Train Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    "This is Bike Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
