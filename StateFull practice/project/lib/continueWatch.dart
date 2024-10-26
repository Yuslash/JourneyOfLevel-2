import 'package:flutter/material.dart';

class ContinueWatch extends StatefulWidget {
  const ContinueWatch({
    super.key,
    required this.image,
  });

  final String image;

  @override
  _ContinueWatchState createState() => _ContinueWatchState();

}

class _ContinueWatchState extends State<ContinueWatch> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          widget.image, fit: BoxFit.cover,),
      ),
    );
  }
}