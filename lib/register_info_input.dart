import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

enum Gender {man, woman}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ko', ''), // Korean
        Locale('en', ''), // English
      ],
      home: RegInfoWidget(),
    );
  }
}

class RegInfoWidget extends StatefulWidget {
  const RegInfoWidget({Key? key}) : super(key: key);

  @override
  State<RegInfoWidget> createState() => _RegInfoWidgetState();
}

class _RegInfoWidgetState extends State<RegInfoWidget> {
  Gender? _gender = Gender.man;

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
              const SizedBox(height: 20),
              const SizedBox(
                height: 30,
                child: Text(
                    textAlign: TextAlign.center,
                    "~~~님, 반갑습니다!",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 50,
                child: Text(
                    textAlign: TextAlign.center,
                    "원활한 서비스 이용을 위해\n아래 정보를 입력해주세요.",
                    style: TextStyle(
                        fontSize: 13,
                        // fontWeight: FontWeight.bold
                    )
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '학번',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: false,
                  textAlignVertical: TextAlignVertical.bottom,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                  ],
                  decoration: InputDecoration(
                    hintText: '학번 8자리를 입력해주세요.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                  style: const TextStyle(
                      fontSize: 14
                  ),
                ),
              ),const SizedBox(height: 20),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '단과대학 / 학과',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          hintText: '예) SW융합대학',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                        ),
                        style: const TextStyle(
                            fontSize: 14
                        ),
                      ),
                    ),
                  ),
                  const Text("      "),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          hintText: '예) 소프트웨어학과',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                        ),
                        style: const TextStyle(
                            fontSize: 14
                        ),
                      ),
                    ),
                  ),
                ],
              ), const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                          text: '성별',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio<Gender>(
                            value: Gender.man,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            }),
                        const Expanded(
                          child: Text('남성'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio<Gender>(
                            value: Gender.woman,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            }),
                        const Expanded(
                          child: Text('여성'),
                        )
                      ],
                    ),
                  ),
                ],
              ), const SizedBox(height: 20),
              SizedBox(
                  height: 20,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: '생년월일',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 120,
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    // dateOrder: DatePickerDateOrder.ymd,
                    initialDateTime: DateTime(2000, 1, 1),
                    onDateTimeChanged: (DateTime newDateTime) {
                    // Do something
                    },
                  ),
                )
              ),
              const SizedBox(height: 20),
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
                    '입력 완료',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffbf2142),
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      )
    );
  }
}