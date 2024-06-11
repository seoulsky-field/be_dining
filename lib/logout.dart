import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final _user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('로그인 계정: ${_user.email!}'),
            MaterialButton(onPressed: () {
              FirebaseAuth.instance.signOut();
            },
              color: const Color(0xffbf2142),
              child: const Text('로그아웃'),
            )
          ],
        ),
      ),
    );
  }
}