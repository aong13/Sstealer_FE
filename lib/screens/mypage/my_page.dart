import 'package:flutter/material.dart';
import 'package:sstealer/screens/mypage/edit_profile.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
          onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
  },
          child:Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            margin: EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF5192AC)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Text(
                  '박박디라라',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //왼쪽
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '보유포인트',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '4,321원',
                              style: TextStyle(
                                color: Color(0xFF5192AC),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //충전 버튼
                                CustomButton(
                                  color: Color(0xFF5192AC),
                                  text: '충전',
                                ),
                                //환급 버튼
                                CustomButton(
                                  color: Color(0xFFE2CCB7),
                                  text: '환급',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //구분선
                    Container(
                      color: Colors.grey,
                      width: 1,
                      height: 100,
                    ),
                    //오른쪽
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MenuRow(title: '포인트 내역'),
                            MenuRow(title: '내 쿠폰 관리'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF5192AC)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '쓰틸러 신청',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '누구나 쉽게 쓰틸러가 될 수 있어요',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '고객센터',
                    style: TextStyle(
                      color: Color(0xFFAFAFAF),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'FAQ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '공지사항',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '문의하기',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    height: 20,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '서비스 설정',
                    style: TextStyle(
                      color: Color(0xFFAFAFAF),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '설정',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
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


class CustomButton extends StatelessWidget {
  final Color color;
  final String text;

  const CustomButton({
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 36,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: color),
          borderRadius: BorderRadius.circular(17),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: color,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class MenuRow extends StatelessWidget {
  final String title;

  const MenuRow({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 10),
      ],
    );
  }
}