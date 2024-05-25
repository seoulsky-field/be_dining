import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: '닉네임을 입력해주세요.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '비밀번호를 입력해주세요.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffbf2142),
                  surfaceTintColor: Color(0xffbf2142),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              onPressed: () {
                // Perform login operation here
              },
              child: const Text(
                  '로그인',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: RichText(
                textAlign: TextAlign.right,
                text: const TextSpan(
                  text: '아직 회원이 아니신가요?   ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '회원가입',
                      style: TextStyle(
                        color: Color(0xffbf2142),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      // recognizer: TapGestureRecognizer()..onTap = () {
                      //   // onTap Event
                      // },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}