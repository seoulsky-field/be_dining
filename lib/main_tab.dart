import 'package:be_dining/roulette.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainTabWidget(),
    );
  }
}

class MainTabWidget extends StatefulWidget {
  const MainTabWidget({Key? key}) : super(key: key);

  @override
  State<MainTabWidget> createState() => MainTabWidgetState();
}

class MainTabWidgetState extends State<MainTabWidget> {
// 탭을 이동할 때 쓸 변수!
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '같이 먹자 구현',
    ),
    Text(
      '혼밥 최고 구현',
    ),
    RecRoulette(),
    Text(
      '마이페이지 구현',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // 앱바의 높이를 설정
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: Center(
            child: Image.asset(
              'assets/images/logo.png', // 로고 이미지 경로
              height: 50, // 원하는 이미지 높이로 설정
            ),
          ),
          elevation: 0,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "같이 먹자",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_outlined),
            label: '혼밥 최고',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: '메뉴 추천',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: Color(0xffBF2142),
        unselectedItemColor: Colors.grey,
      ),

    );
  }
}