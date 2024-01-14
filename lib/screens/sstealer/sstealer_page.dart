import 'package:flutter/material.dart';
import '../../widgets/toggle_btn.dart';
import 'my_sstealer_page.dart';

class SstealerPage extends StatefulWidget {
  @override
  _SstealerPageState createState() => _SstealerPageState();
}

class _SstealerPageState extends State<SstealerPage> {
  int toggleIndex = 0;

  @override
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
            labels: ['요청 목록', '나의 수거'],
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
                                          //음식물정보와 갯수를 가로나열해야하기때문에 Row로 했다.
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
                                  ],
                                ),
                              ));
                        })),
                  ),
                ),
                MySstealerPage(
                  // MySstealerPage에 속성 전달
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