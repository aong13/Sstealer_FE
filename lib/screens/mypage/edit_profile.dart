import 'package:flutter/material.dart';
import 'package:sstealer/screens/mypage/email_change_page.dart';
import 'package:sstealer/screens/mypage/nickname_change_page.dart';
import 'package:sstealer/screens/mypage/number_change_page.dart';
import 'package:sstealer/screens/mypage/password_change_page.dart';
import 'package:sstealer/screens/mypage/payment_password_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Go back
          },
        ),
        title: Center(
          child: Text(
            '내 정보',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NicknameChangePage()),
                    );
                  },
                  child: Container(
                    width: 85,
                    height: 21,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.80, color: Color(0xFF5192AC)),
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '닉네임 변경',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5192AC),
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                buildInfoRow('이름', '김박박'),
                buildInfoRow('이메일', 'hihi@naver.com', showArrow: true, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmailChangePage()),
                  );
                }),
                buildInfoRow('휴대폰 번호 변경', null, showArrow: true, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NumberChangePage()),
                  );
                }),
                buildInfoRow('비밀번호 변경', null, showArrow: true, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordChangePage()),
                  );
                }),
                buildInfoRow('결제 비밀번호 관리', null, showArrow: true, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentPasswordPage()),
                  );
                }),
              ],
            ),
          ),
          buildLogoutRow(),
        ],
      ),
    );
  }

  Widget buildInfoRow(String label, String? value, {bool showArrow = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              if (value != null)
                Text(
                  value,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              if (showArrow)
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey),
                ),
            ],
          ),
          Divider(color: Colors.grey, thickness: 0.5, height: 40),
        ],
      ),
    );
  }

  Widget buildLogoutRow() {
    return Row(
      children: [
        Spacer(),
        Text(
          '로그아웃',
          style: TextStyle(
            color: Color(0xFF797979),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          height: 18,
          width: 1,
          color: Color(0xFF797979),
          margin: EdgeInsets.symmetric(horizontal: 30),
        ),
        Text(
          '회원탈퇴',
          style: TextStyle(
            color: Color(0xFF797979),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
