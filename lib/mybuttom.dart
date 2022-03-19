import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  MyButtom({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: () => onPressed,
        minWidth: 200,
        height: 42,
        child: Text(
          title,
          style: TextStyle(color: Colors.blue[900]),
        ),
      ),
    );
  }
}
