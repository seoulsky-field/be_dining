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

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordCheckingController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController emailCheckingController = TextEditingController();

  String _nicknameCheckMessage = "";
  Color _nicknameCheckColor = Colors.red;
  bool _nicknameCheckAlert = false;

  Future<void> _checkNickname() async {
    final nickname = nicknameController.text;
      if (nickname.isEmpty) {
        setState(() {
          _nicknameCheckMessage = '닉네임을 입력해주세요.';;
          _nicknameCheckColor = Colors.red;
          _nicknameCheckAlert = true;
        });
      }else if (nickname == "admin") {
        setState(() {
          _nicknameCheckMessage = '이미 존재하는 닉네임입니다.';
          _nicknameCheckColor = Colors.red;
          _nicknameCheckAlert = true;
        });
      }else {
        setState(() {
          _nicknameCheckMessage = '사용 가능한 닉네임입니다.';
          _nicknameCheckColor = Colors.blue;
          _nicknameCheckAlert = true;
        });
      }
  }

  String _emailCheckMessage = "";
  Color _emailCheckColor = Colors.red;
  bool _emailCheckAlert = false;

  Future<void> _checkEmail() async {
    final email = emailController.text;
    if (email.isEmpty) {
      setState(() {
        _emailCheckMessage = '이메일을 입력해주세요.';
        _emailCheckColor = Colors.red;
        _emailCheckAlert = true;
      });
    }else if (email == "admin") {
      setState(() {
        _emailCheckMessage = '이미 등록된 이메일입니다.';
        _emailCheckColor = Colors.red;
        _emailCheckAlert = true;
      });
    }else {
      setState(() {
        _emailCheckMessage = '인증 번호가 전송되었습니다.';
        _emailCheckColor = Colors.blue;
        _emailCheckAlert = true;
      });
    }
  }

  String _passwordCheckMessage = "";
  Color _passwordCheckColor = Colors.red;
  bool _passwordCheckAlert = false;

  Future<void> _checkPassword(String text) async {
    final password = passwordController.text;
    if (password.isEmpty || text.isEmpty) {
      setState(() {
        _passwordCheckMessage = '비밀번호를 입력해주세요.';
        _passwordCheckColor = Colors.red;
        _passwordCheckAlert = true;
      });
    }else if (password != text) {
      setState(() {
        _passwordCheckMessage = '입력된 비밀번호가 동일하지 않습니다.';
        _passwordCheckColor = Colors.red;
        _passwordCheckAlert = true;
      });
    }else {
      setState(() {
        _passwordCheckMessage = '비밀번호가 확인되었습니다.';
        _passwordCheckColor = Colors.blue;
        _passwordCheckAlert = true;
      });
    }
  }

  String _emailDoubleCheckMessage = "";
  Color _emailDoubleCheckColor = Colors.red;
  bool _emailDoubleCheckAlert = false;

  Future<void> _doubleCheckEmail() async {
    final emailNumber = emailCheckingController.text;
    if (emailNumber.isEmpty) {
      setState(() {
        _emailDoubleCheckMessage = '인증 번호를 입력해주세요.';
        _emailDoubleCheckColor = Colors.red;
        _emailDoubleCheckAlert = true;
      });
    }else if (emailNumber == "123456") {
      setState(() {
        _emailDoubleCheckMessage = '전송된 인증 번호와 다릅니다.';
        _emailDoubleCheckColor = Colors.red;
        _emailDoubleCheckAlert = true;
      });
    }else {
      setState(() {
        _emailDoubleCheckMessage = '인증되었습니다.';
        _emailDoubleCheckColor = Colors.blue;
        _emailDoubleCheckAlert = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
              ), const SizedBox(height: 20),
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
              ), const SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  controller: nicknameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)
                      ),
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(top: 0, bottom: 0, right: 12, left: 12),
                                backgroundColor: Colors.grey,
                                surfaceTintColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              onPressed: _checkNickname,
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
              ), const SizedBox(height: 5),
              Visibility(
                  visible: _nicknameCheckAlert,
                  child: SizedBox(
                    height: 20,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Icon(Icons.info_outline, size: 15, color: _nicknameCheckColor),
                            ),
                          ),
                          TextSpan(
                            text: _nicknameCheckMessage,
                            style: TextStyle(
                                fontSize: 12,
                                color: _nicknameCheckColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ), const SizedBox(height: 15),
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
              ), const SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                ),
              ),const SizedBox(height: 10),
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
              ), const SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  controller: passwordCheckingController,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                  onChanged: (text) => { _checkPassword(text) },
                ),
              ), const SizedBox(height: 5),
              Visibility(
                visible: _passwordCheckAlert,
                child: SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(Icons.info_outline, size: 15, color: _passwordCheckColor),
                          ),
                        ),
                        TextSpan(
                          text: _passwordCheckMessage,
                          style: TextStyle(
                              fontSize: 12,
                              color: _passwordCheckColor
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), const SizedBox(height: 30),
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
              ), const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        controller: emailController,
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
              ), const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                      width: 1.25, color: Color(0xffbf2142)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                onPressed: _checkEmail,
                child: const Text(
                    '인증 요청',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffbf2142),
                        fontWeight: FontWeight.bold
                    )
                ),
              ), const SizedBox(height: 5),
              Visibility(
                  visible: _emailCheckAlert,
                  child: SizedBox(
                    height: 20,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Icon(Icons.info_outline, size: 15, color: _emailCheckColor),
                            ),
                          ),
                          TextSpan(
                            text: _emailCheckMessage,
                            style: TextStyle(
                                fontSize: 12,
                                color: _emailCheckColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              Visibility(
                visible: _emailCheckMessage == "인증 번호가 전송되었습니다.",
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                    const SizedBox(height: 7),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        controller: emailCheckingController,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7)
                            ),
                            suffixIcon: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
                                      backgroundColor: Colors.grey,
                                      surfaceTintColor: Colors.grey,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: _doubleCheckEmail,
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
                    const SizedBox(height: 10),
                    Visibility(
                      visible: _emailDoubleCheckAlert,
                      child: SizedBox(
                        height: 20,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(Icons.info_outline, size: 15, color: _emailDoubleCheckColor),
                                ),
                              ),
                              TextSpan(
                                text: _emailDoubleCheckMessage,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: _emailDoubleCheckColor
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 30,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.info_outline, size: 15, color: Colors.grey),
                              ),
                            ),
                            TextSpan(
                              text: '인증 번호를 받지 못하셨나요?  ',
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
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffbf2142),
                        surfaceTintColor: const Color(0xffbf2142),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      onPressed: () {
                        if (_nicknameCheckMessage != "사용 가능한 닉네임입니다." ||
                            _passwordCheckMessage != "비밀번호가 확인되었습니다." ||
                            _emailCheckMessage != '인증 번호가 전송되었습니다.' ||
                            _emailDoubleCheckMessage != '인증되었습니다.') {
                          null;
                        }else {
                          Navigator.of(context).push(_createRoute());
                        }
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
