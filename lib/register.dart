import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
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
                  width: 75,
                  height: 75,
                  fit: BoxFit.contain
              ),
              SizedBox(height: 20),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '닉네임',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)
                      ),
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          // child: FittedBox(
                          //   fit:BoxFit.scaleDown,
                          //   child,
                          // ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(top: 0, bottom: 0, right: 12, left: 12),
                                backgroundColor: Colors.grey,
                                surfaceTintColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              onPressed: () {},
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text: '중복 확인',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '비밀번호',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    // labelText: '비밀번호를 입력해주세요.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                ),
              ),SizedBox(height: 10),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '비밀번호 재확인',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '이메일 인증',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                ),
              ),SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  // surfaceTintColor: Color(0xffbf2142),
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                      width: 1.25, color: Color(0xffbf2142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                onPressed: () {
                  // Perform login operation here
                },
                child: const Text(
                    '인증 요청',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffbf2142),
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '이메일 전송된 인증 코드를 입력해주세요.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              SizedBox(height: 7),
              SizedBox(
                height: 45,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)
                      ),
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          // child: FittedBox(
                          //   fit:BoxFit.scaleDown,
                          //   child,
                          // ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
                                backgroundColor: Colors.grey,
                                surfaceTintColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              onPressed: () {},
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text: '확인',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 30,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: '이메일을 받지 못하셨나요?  ',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '이메일 재전송하기',
                        style: TextStyle(
                          color: Colors.blueGrey,
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
            ],
          ),
        )
      ),
    );
  }
}