import 'package:flutter/material.dart';
import 'package:horizontal_stepper_flutter/horizontal_stepper_flutter.dart';

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
            child: IndexedStack(
              index: toggleIndex,
              children: [
                Text('나의수거페이지확인'),
                Container(
                  child: Center(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(12),
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '남구 대연동',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '용소로 45 부경아파트 108동 304호',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
