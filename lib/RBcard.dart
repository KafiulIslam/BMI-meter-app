import 'package:flutter/material.dart';

class RBcard extends StatelessWidget {
  RBcard({@required this.icon, this.gender});

  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 20, color: Color(0x98FFFFFF)),
        )
      ],
    );
  }
}
