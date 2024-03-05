import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Authen_screen/authen_pin_screen.dart';
import 'package:flutter_application_1/screen/regis/regis_screen.dart';
import 'package:flutter_application_1/screen/OTP_email/OTPinput.dart';
import 'package:flutter_application_1/screen/New_Pass/new_pass.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenPage extends StatefulWidget {
  const AuthenPage({super.key});

  @override
  State<AuthenPage> createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  btnback() {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.white));
  }

  showpopup() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.2,
                  maxHeight: MediaQuery.of(context).size.height * 0.275),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Image.asset('lib/assets/authen.png',
                          height: 75, width: 75),
                    ),
                    Column(
                      children: [
                        Text('สแกนหน้าเพื่อเข้าสู่ระบบ',
                            style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            )))
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'ยกเลิก',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(138, 124, 227, 1)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 1, vertical: 0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        )),
                      ),
                    ),
                  ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(138, 124, 227, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
                        padding: const EdgeInsets.only(left: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'สวัสดี',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              'คุณสมมุติ ทดลองระบบ',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 90),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              width: double.infinity,
                              height:
                                  MediaQuery.of(context).size.height * 0.705,
                              padding: EdgeInsets.all(27.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: OTPInput()),
                                  SizedBox(height: 30),
                                  ElevatedButton(
                                    onPressed: () {
                                      showpopup();
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Image.asset(
                                              color: Colors.black,
                                              'lib/assets/person2.png',
                                              height: 24,
                                              width: 24),
                                          onPressed: () {
                                            showpopup();
                                          },
                                        ),
                                        Text(
                                          'สแกน Face ID',
                                          style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(4),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 0)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AuthenPin()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Image.asset(
                                              'lib/assets/unlock.png',
                                              color: Colors.black,
                                              height: 24,
                                              width: 24),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AuthenPin()));
                                          },
                                        ),
                                        Text(
                                          'เข้าสู่ระบบด้วยวิธีอื่น',
                                          style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(
                                          4), // ปรับค่าตามความต้องการ

                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 0)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewPassword()));
                                      },
                                      child: Text('ลืมรหัสผ่าน',
                                          style: GoogleFonts.notoSansThai(
                                            textStyle:
                                                TextStyle(color: Colors.black),
                                          ))),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: -80,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 70,
                                backgroundImage:
                                    AssetImage('lib/assets/person.png'),
                              ),
                            ),
                          ),
                        ],
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
