import 'package:flutter/material.dart';
import '../../widgets/usage_card.dart';
import '../sstealer/sstealer_detail_page.dart';

class UsageSstealPage extends StatelessWidget {

  final int toggleIndex;
  final void Function(int?) onToggle;

  const UsageSstealPage({
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
                        child: UsageCard(
                          date: '11. 18 (토) 신청중',
                          address: '부산 남구 용소로 45 부경아파트 101동 101호',
                          price: '4000원',
                        ));
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