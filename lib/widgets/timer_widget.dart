import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final String remainingTime;

  TimerWidget({required this.remainingTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF5192AC)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '남은 시간',
            style: TextStyle(
              color: Color(0xFF797979),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            remainingTime,
            style: TextStyle(
              color: Color(0xFF5192AC),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
