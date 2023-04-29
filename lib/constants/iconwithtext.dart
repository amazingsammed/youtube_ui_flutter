import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  String text;
  IconData icon;
  Color? color;

  IconWithText({Key? key, required this.text, required this.icon,this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: color??Colors.grey),
          Text(
            text,
            style: TextStyle(color: color??Colors.grey[800]),
          )
        ],
      ),
    );
  }
}
