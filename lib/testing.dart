import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double width;

  ProgressBar(this.width);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.timer),
        Stack(
          children: [
            Container(
              width: width,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey[400],borderRadius: BorderRadius.circular(5),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                height: 10,
                width: width * 0.5,
                duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              ),
            )
          ],
        )
      ],
    );
  }
}