import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MySstealerPage extends StatelessWidget {
  final int toggleIndex;
  final void Function(int?) onToggle;

  const MySstealerPage({
    Key? key,
    required this.toggleIndex,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // '나의 수거'에 해당하는 페이지 내용 추가
            Text('나의 수거 페이지'),
          ],
        ),
      ),
    );
  }
}
