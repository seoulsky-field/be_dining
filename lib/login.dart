import 'package:be_dining/register.dart';
import 'package:flutter/gestures.dart';
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

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              const SizedBox(
                height: 50,
                child: Text(
                  textAlign: TextAlign.center,
                  "혼밥의, 혼밥에 의한, 혼밥을 위한\nLet's do BeDining",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),
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
                  text: TextSpan(
                    text: '아직 회원이 아니신가요?   ',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '회원가입',
                        style: const TextStyle(
                          color: Color(0xffbf2142),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.of(context).push(_createRoute());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
              position: animation.drive(tween), child: child);
        });
  }
}