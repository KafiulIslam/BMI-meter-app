import 'package:flutter/material.dart';

class Cntr extends StatelessWidget {
  Cntr({@required this.color, this.Bcard, this.onPress});
  final Color color;
  final Widget Bcard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Bcard,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
      ),
    );
  }
}
