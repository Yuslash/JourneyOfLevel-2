import 'package:flutter/material.dart';

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
          height: 120,
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
    );
  }
}