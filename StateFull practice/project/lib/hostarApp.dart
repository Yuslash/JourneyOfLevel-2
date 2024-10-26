import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:project/bodyRow.dart';
import 'package:project/heroPage.dart';

class HotstarApp extends StatefulWidget {
  const HotstarApp({super.key});

  @override
  _HotstarAppState createState() => _HotstarAppState();

}

class _HotstarAppState extends State<HotstarApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAEB0B7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFAEB0B7),
        toolbarHeight: 100,
        title: Container(
          // color: Colors.red,
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('images/components/logo.png', fit: BoxFit.cover,),
              Row(
                children: [
                  Padding(padding: const  EdgeInsets.only(left: 10),
                    child: IconButton(onPressed: (){
                      debugPrint("Cast button clicked!");
                    }, icon: const Icon(Icons.cast)),
                  ),
                  IconButton(onPressed: (){
                    debugPrint("Search Button Clicked!");
                  }, icon: const Icon(Icons.search),)
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                            width: 380,
                            height: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'images/marvel.jpeg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 380,
                            height: 240,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'images/marvel.jpeg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 380,
                            height: 240,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    'images/marvel.jpeg',
                                  )),
                            ),
                          ),
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        BodyRow(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          
        ),
      ),
    );
  }
}