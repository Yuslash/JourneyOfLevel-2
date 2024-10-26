import 'package:flutter/material.dart';

class BodyRow extends StatefulWidget {
  
  const BodyRow({super.key});

  _BodyRowState createState() => _BodyRowState();
}

class _BodyRowState extends State<BodyRow> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("Continue Watching", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          IconButton(onPressed: (){
            print("See More Clicked");
          }, icon: const Icon(Icons.chevron_right),)
        ],
      ),
    );
  }
}