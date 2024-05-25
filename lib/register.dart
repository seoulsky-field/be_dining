import 'package:be_dining/register_info_input.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(" @ "),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        controller: TextEditingController(text: "dankook.ac.kr"),
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                      text: '이메일로 전송된 인증 코드를 입력해주세요.',
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
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.info_outline, size: 15, color: Colors.grey),
                        ),
                      ),
                      TextSpan(
                        text: '이메일을 받지 못하셨나요?  ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),
                      ),
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
                  Navigator.of(context).push(_createRoute());
                },
                child: const Text(
                    '가입 완료',
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

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => RegInfoWidget(),
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