import 'package:flutter/material.dart';
import '../widgets/toggle_btn.dart';
import 'usage_ssteal_page.dart';

class UsagePage extends StatefulWidget {
  @override
  _UsagePageState createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  int toggleIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: Column(
        children: [
          // 상단 토글 버튼
          ToggleButton(
            toggleIndex: toggleIndex,
            onToggle: (index) {
              setState(() {
                toggleIndex = index!;
              });
            },
            labels: ['신청 내역', '쓰틸 내역'],
          ),
          Expanded(
            child: IndexedStack(
              index: toggleIndex,
              children: [
                Container(
                  child: Center(
                    child: (ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            //하나의 요청내역
                              margin: EdgeInsets.all(12),
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child:
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '11. 18 (토) 신청중',
                                      style: TextStyle(
                                        color: Color(0xFF797979),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        '부산 남구 용소로 45 부경아파트 101동 101호',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '4000원',
                                      style: TextStyle(
                                        color: Color(0xFF5192AC),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        })),
                  ),
                ),
                UsageSstealPage(
                  // UsageSstealPage 속성 전달
                  toggleIndex: toggleIndex,
                  onToggle: (index) {
                    setState(() {
                      toggleIndex = index!;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
