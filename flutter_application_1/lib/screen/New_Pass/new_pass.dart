import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/regis/regis_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formKey = GlobalKey<FormState>();
  TextEditingController lengthController = TextEditingController();
  bool lengthValid = false;
  bool upperCase = false;
  bool lowerCase = false;
  bool specialCase = false;
  bool numberCase = false;
  String password = "";
  String confirmPassword = "";

  btnback() {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.white));
  }

  conditionText() {
    return Column(
      children: [
        Text('เงื่อนไขการตั้งรหัสผ่าน',
            style: TextStyle(color: Colors.grey[400])),
        Text('มีความยาวอย่างน้อย 8 ตัวอักษร',
            style: TextStyle(
                color: lengthValid ? Colors.green[400] : Colors.red[400])),
        Text('มีตัวอักษรพิมพ์ใหญ่ (A-Z) อย่างน้อย 1 ตัว',
            style: TextStyle(
                color: upperCase ? Colors.green[400] : Colors.red[400])),
        Text('มีตัวอักษรพิมพ์เล็ก (a-z) อย่างน้อย 1 ตัว',
            style: TextStyle(
                color: lowerCase ? Colors.green[400] : Colors.red[400])),
        Text('มีอักขระพิเศษ (#, @, !, %, ?, &,) อย่างน้อย 1 ตัว',
            style: TextStyle(
                color: specialCase ? Colors.green[400] : Colors.red[400])),
        Text('มีตัวเลข (0-9) อย่างน้อย 1 ตัว',
            style: TextStyle(
                color: numberCase ? Colors.green[400] : Colors.red[400])),
      ],
    );
  }

  validatePassword(String value) {
    if (value == null) {
      print('valueisempty');
    } else {
      print('valueisnotempty');
      if (value.length >= 8) {
        print(value.length);
        lengthValid = true;
      } else {
        lengthValid = false;
      }
      if (value!.contains(RegExp(r"[a-z]"))) {
        lowerCase = true;
      } else {
        lowerCase = false;
      }
      if (value!.contains(RegExp(r"[A-Z]"))) {
        upperCase = true;
      } else {
        upperCase = false;
      }
      if (value!.contains(RegExp(r"[0-9]"))) {
        numberCase = true;
      } else {
        numberCase = false;
      }
      if (value!.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        specialCase = true;
      } else {
        specialCase = false;
      }
      if (lengthValid &&
          lowerCase &&
          upperCase &&
          numberCase &&
          specialCase == true) {
        setState(() {
          password = value.toString();
          print(password);
        });
      }
    }
  }

  passwordMatch(String value) {
    if (password == value) {
      print('passismatch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(138, 124, 227, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      btnback(),
                      Padding(
                        padding: const EdgeInsets.only(top: 36),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ตั้งรหัสผ่านใหม่',
                                    style: GoogleFonts.notoSansThai(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'สำหรับเข้าใช้งาน RAMA SuperApp',
                                    style: GoogleFonts.notoSansThai(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.8,
                          padding: EdgeInsets.all(27.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                conditionText(),
                                Row(
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('ชื่อผู้ใช้งาน :  ',
                                            style: GoogleFonts.notoSansThai(
                                                textStyle: TextStyle(
                                                    height: 3,
                                                    fontWeight:
                                                        FontWeight.bold)))),
                                    Text(
                                      'Test1',
                                      style: GoogleFonts.notoSans(
                                          textStyle: TextStyle(
                                              height: 3,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(3, 2),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    controller: lengthController,
                                    decoration: InputDecoration(
                                      hintText: 'รหัสผ่านใหม่',
                                      hintStyle: GoogleFonts.notoSansThai(),
                                      icon: IconButton(
                                        icon: Image.asset(
                                            'lib/assets/unlock.png',
                                            height: 24,
                                            width: 24),
                                        onPressed: () {},
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                    onChanged: validatePassword,
                                    autovalidateMode: AutovalidateMode.always,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(3, 2),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'ยืนยันรหัสผ่านใหม่',
                                        hintStyle: GoogleFonts.notoSansThai(),
                                        icon: IconButton(
                                          icon: Image.asset(
                                              'lib/assets/unlock.png',
                                              height: 24,
                                              width: 24),
                                          onPressed: () {},
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                      ),
                                      // validator: (value) {
                                      //   passwordMatch(value!);
                                      // },
                                      onChanged: passwordMatch,
                                      autovalidateMode:
                                          AutovalidateMode.always),
                                ),
                                SizedBox(height: 40),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'ยืนยัน',
                                        style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(138, 124, 227, 1)),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
