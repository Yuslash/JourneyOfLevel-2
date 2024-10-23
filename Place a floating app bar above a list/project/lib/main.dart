import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    
    const title = "Floating App Bar!";

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: title,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 222, 123),
        body: CustomScrollView(
          slivers: [
             const SliverAppBar(
              title: Text(title, style: TextStyle(color: Colors.white),),
              centerTitle: true,
              floating: true,
              flexibleSpace: Image(image: AssetImage('images/nice.jpeg'),fit: BoxFit.cover,),
              expandedHeight: 200,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                      title: Text('Item $index'),
                    ),
                childCount: 100
              ),
            ),
          ],
        )
      ),
    );
  }

}