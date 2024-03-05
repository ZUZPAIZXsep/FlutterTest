import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Authen_screen/pincode.dart';
import 'package:flutter_application_1/screen/regis/regis_screen.dart';
import 'package:flutter_application_1/screen/OTP_email/OTPinput.dart';
import 'package:flutter_application_1/screen/New_Pass/new_pass.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenPin extends StatefulWidget {
  const AuthenPin({super.key});

  @override
  State<AuthenPin> createState() => _AuthenPinState();
}

class _AuthenPinState extends State<AuthenPin> {
  btnback() {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.white));
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
                                    height: 40,
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 0, bottom: 0),
                                      child: PINcode()),
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
