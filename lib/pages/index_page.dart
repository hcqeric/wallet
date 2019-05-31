import 'package:flutter/material.dart';
import 'home_page.dart';
import 'propagate_page.dart';
import 'share_page.dart';
import 'member_page.dart';
import 'package:provide/provide.dart';
import '../provide/current_index.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Image.asset('assets/home.png'),
      activeIcon: Image.asset('assets/home_active.png'),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/propagate.png'),
      activeIcon: Image.asset('assets/propagate_active.png'),
      title: Text('主城'),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/share.png'),
      activeIcon: Image.asset('assets/share_active.png'),
      title: Text('分享'),
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/member.png'),
      activeIcon: Image.asset('assets/member_active.png'),
      title: Text('我的'),
    ),
  ];

  final List<Widget> tabBodies = [
    HomePage(),
    PropagatePage(),
    SharePage(),
    MemberPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Provide<CurrentIndexProvide>(
      builder: (context,child,provide){
        int currentIndex = provide.currentIndex;
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: bottomTabs,
            currentIndex: currentIndex,
            onTap: (int index){
              provide.changeIndex(index);
            },
          ),
          body: IndexedStack(
            index: currentIndex,
            children: tabBodies,
          ),
        );
      },

    );
  }
}
