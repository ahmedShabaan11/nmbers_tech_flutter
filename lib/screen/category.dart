import 'package:flutter/material.dart';

// ignore: must_be_immutable
class   Category extends StatefulWidget {
 Category({super.key, required this.text, required this.color, this.onTap});

  String text;
  Color color;
  Function()? onTap;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: widget.color,
        child: Text(
          widget.text,
          style:const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
