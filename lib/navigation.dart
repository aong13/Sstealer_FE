import 'package:flutter/material.dart';
import 'package:sstealer/home_page.dart';
import 'package:sstealer/request_page.dart';
import 'package:sstealer/sstealer_page.dart';
import 'package:sstealer/usage_page.dart';
import 'package:sstealer/my_page.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  
  int selectexIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        elevation:100 ,
        selectedIndex: selectexIndex,
        onDestinationSelected: (value)=> setState((){
          selectexIndex=value;
        }),
        destinations: [
          NavigationDestination(
              icon: const Icon(Icons.home, size: 30),
              label: "홈",
              tooltip: null,),
          NavigationDestination(
              icon: const Icon(Icons.delete, size: 30),
              label: "수거 신청",
              tooltip: null,),
          NavigationDestination(
              icon: const Icon(Icons.directions_run, size: 30),
              label: "쓰틸러",
              tooltip: null,),
          NavigationDestination(
              icon: const Icon(Icons.list_alt_outlined, size: 30),
              label: "이용내역",
              tooltip: null,),
          NavigationDestination(
              icon: const Icon(Icons.account_circle, size: 30),
              label: "MY",
              tooltip: null,),
        ],
        animationDuration: const Duration(milliseconds: 500),
      ),
      body:Center(
        child: IndexedStack(
          index: selectexIndex,
          children: [
            HomePage(),
            RequestPage(),
            SstealerPage(),
            UsagePage(),
            MyPage()
          ],
        ),
      )
    );
  }
}
