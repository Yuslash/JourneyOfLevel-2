import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('images/marvel.jpeg', width: 200,height: 200, fit: BoxFit.cover,),
        ),
      ],
    );
  }
}