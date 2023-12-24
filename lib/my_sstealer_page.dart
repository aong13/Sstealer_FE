import 'package:flutter/material.dart';
import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';
import 'package:sstealer/sstealer_detail_page.dart';

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
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SstealerDatailPage(),
                            ),
                          );
                        },
                        child: MySstealerCard());
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class MySstealerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.all(12),
      color: Colors.white,
      child: Padding(
      padding: EdgeInsets.all(16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( //동주소
            '남구 대연동',
              style: TextStyle(
              color: Colors.black,
                fontSize: 14,
              ),
            ),
            Text( //주소
            '용소로 45 부경아파트 108동 304호',
              style: TextStyle(
              color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '음식물 · 1개',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Text(
              '4,000원',
              style: TextStyle(
                color: Color(0xFF92BB66),
                fontSize: 20,
              ),
            ),
            FlutterHorizontalStepper(
              steps: const ["쓰틸 전", "쓰틸중", "쓰틸 완료"],
              radius: 45,
              currentStep: 2, // 여기를 바꾸면 됨
              child: const [
                Text(""),
                Text(""),
                Text(""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
