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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Padding(padding: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                          width: 100,
                          height: 100,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(
                        width: 100,
                        height: 100,
                        child: DecoratedBox(decoration: 
                        BoxDecoration(color: Colors.green, 
                        borderRadius: 
                        BorderRadius.all(Radius.circular(15),
                            ),
                          ),
                        ),
                       ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: DecoratedBox(decoration: 
                          BoxDecoration(
                            color: Colors.orange, 
                            borderRadius: 
                            BorderRadius.all(Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: DecoratedBox(decoration: 
                        BoxDecoration(
                          color: Colors.lime,
                          borderRadius: 
                          BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: DecoratedBox(decoration: 
                          BoxDecoration(color: Colors.red, 
                          borderRadius: 
                          BorderRadius.all(Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: DecoratedBox(decoration: 
                        BoxDecoration(color: Colors.blue, 
                        borderRadius: 
                        BorderRadius.all(Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) ,
                ),
          ],
        ),
      ),
    ),
  );
}
}
