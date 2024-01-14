import 'package:flutter/material.dart';
import 'package:sstealer/screens/usage/usage_navigation.dart';
import 'usage_detail_page.dart';
import '../../widgets/toggle_btn.dart';
import '../../widgets/usage_card.dart';
import 'usage_ssteal_page.dart';

class UsagePage extends StatefulWidget {
  @override
  _UsagePageState createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  int toggleIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: Column(
        children: [
          ToggleButton(
            toggleIndex: toggleIndex,
            onToggle: (index) {
              setState(() {
                toggleIndex = index!;
              });
            },
            labels: ['신청 내역', '쓰틸 내역'],
          ),
          UsageNavigation(),
          Expanded(
            child: IndexedStack(
              index: toggleIndex,
              children: [
                FutureBuilder(
                  // fetchData() 함수를 호출하고, 그 결과를 snapshot으로 받아와서 처리
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else {
                      // 받아온 데이터로 카드를 생성하는 로직을 추가
                      List<UsageItem>? usageItems = snapshot.data; // UsageItem 모델 클래스 사용
                      return ListView.builder(
                        itemCount: usageItems?.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UsageDatailPage(),
                                ),
                              );
                            },
                            child: UsageCard(
                              date: usageItems![index].date,
                              address: usageItems[index].address,
                              price: usageItems[index].price,
                            ),
                          );
                        },
                      );
                    }
                  },
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

  //서버로부터 데이터 받아오기
  Future<List<UsageItem>> fetchData() async {
    await Future.delayed(Duration(seconds: 1)); // 예시로 2초 대기
    return [
      UsageItem(date: '11. 18 (토) 신청중', address: '부산 남구 용소로 45 부경아파트 101동 101호', price: '4000원'),
      UsageItem(date: '11. 18 (토) 신청중', address: '부산 남구 용소로 45 부경아파트 101동 101호', price: '4000원')
    ];
  }
}

//데이터모델클래스
class UsageItem {
  final String date;
  final String address;
  final String price;

  UsageItem({required this.date, required this.address, required this.price});
}
