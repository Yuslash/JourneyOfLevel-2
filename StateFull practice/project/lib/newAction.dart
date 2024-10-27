import 'package:flutter/material.dart';

class NewAction extends StatefulWidget {
  const NewAction({
    super.key,
    required this.image,
  });

  final String image;

  @override
  _NewActionState createState() => _NewActionState();
}

class _NewActionState extends State<NewAction> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(widget.image, fit: BoxFit.cover,),
      ),
    );
  }
}