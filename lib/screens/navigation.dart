import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'request/request_page.dart';
import 'sstealer/sstealer_page.dart';
import 'usage/usage_page.dart';
import 'mypage/my_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        elevation: 100,
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home, size: 30),
            label: "홈",
            tooltip: null,
          ),
          NavigationDestination(
            icon: const Icon(Icons.delete, size: 30),
            label: "수거 신청",
            tooltip: null,
          ),
          NavigationDestination(
            icon: const Icon(Icons.directions_run, size: 30),
            label: "쓰틸러",
            tooltip: null,
          ),
          NavigationDestination(
            icon: const Icon(Icons.list_alt_outlined, size: 30),
            label: "이용내역",
            tooltip: null,
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle, size: 30),
            label: "MY",
            tooltip: null,
          ),
        ],
        animationDuration: const Duration(milliseconds: 500),
      ),
      body: Center(
        child: IndexedStack(
          index: selectedIndex,
          children: [
            HomePage(),
            RequestPage(),
            SstealerPage(),
            UsagePage(),
            MyPage(),
          ],
        ),
      ),
    );
  }
}
