import 'package:flutter/material.dart';

class UsageCard extends StatelessWidget {
  final String date;
  final String address;
  final String price;

  UsageCard({
    required this.date,
    required this.address,
    required this.price,
  });

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
            Text(
              date,
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
              address,
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
              price,
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
      ),
    );
  }
}
