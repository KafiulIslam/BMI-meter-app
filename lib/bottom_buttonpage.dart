import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.bottomTitle});
  final Function onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 2),
        height: 70,
        width: double.infinity,
        color: Colors.pinkAccent[700],
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              bottomTitle,
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xB3FFFFFF),
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
