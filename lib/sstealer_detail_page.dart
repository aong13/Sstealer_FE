import 'package:flutter/material.dart';

class SstealerDatailPage extends StatelessWidget {
  const SstealerDatailPage({Key? key}) : super(key: key);

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
            Navigator.of(context).pop(); // 뒤로가기
          },
        ),
        title: Center(
          child: Text(
            '요청 상세 내역',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '쓰틸러를 찾고 있어요.',
                  style: TextStyle(
                    color: Color(0xFF5192AC),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '신청일시 : 2023년 11월 18일 오후 2시 11분',
                        style: TextStyle(
                          color: Color(0xFF797979),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '남길 말 : 깨끗하게 치아주이소',
                        style: TextStyle(
                          color: Color(0xFF797979),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '부산 남구 용소로 45 부경아파트 101동 101호',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '신청번호 : S123456789',
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '쓰틸할 쓰레기를 선택하세요',
                  style: TextStyle(
                    color: Color(0xFF5192AC),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  child: Center(
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,  // Important: Use shrinkWrap to enable scrolling inside ListView
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(5),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '일반 쓰레기',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      '20L 2개',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '50L 1개',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  '2,000원',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF92BB66),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
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
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(5),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '적립금액',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '예상금액',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '2,000원',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '총 예상적립금액',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '2,000원',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF5192AC),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
