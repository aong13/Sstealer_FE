import 'package:flutter/material.dart';

class UsageNavigation extends StatefulWidget {
  @override
  _UsageNavigationState createState() => _UsageNavigationState();
}

class _UsageNavigationState extends State<UsageNavigation> {
  List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 313,
      height: 27,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavigationButton('전체', 0),
          _buildNavigationButton('신청중', 1),
          _buildNavigationButton('대기중', 2),
          _buildNavigationButton('쓰틸완료', 3),
          _buildNavigationButton('취소', 4),
        ],
      ),
    );
  }

  Widget _buildNavigationButton(String text, int index) {
    return GestureDetector(
      onTap: () {
        // 클릭 시 필요한 동작 수행
        // 예: 해당 버튼에 대한 내용을 변경하거나 새로운 카드를 생성

        // 버튼 클릭 시 상태 업데이트
        setState(() {
          isSelected = List.generate(5, (i) => i == index);
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: isSelected[index] ? 2.0 : 1.0,
              color: isSelected[index] ? Color(0xFF5192AC) : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected[index] ? Color(0xFF5192AC) : Color(0xFFAFAFAF),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: isSelected[index] ? FontWeight.w600 : FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
