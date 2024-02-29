import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/regis/regis_screen.dart';
import 'package:flutter_application_1/screen/OTP_email/otp_email_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  void logHello() {
    print("Hello");
  }

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
                  minHeight: MediaQuery.of(context).size.height * 0.3,
                  maxHeight: MediaQuery.of(context).size.height * 0.35),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('ระบบได้ส่งรหัสไปยังอีเมล'),
                        Text(
                          'Test1@hotmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(138, 124, 227, 1)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Image.asset('lib/assets/confirm.png',
                          height: 100, width: 100),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPEmail()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'ยืนยัน',
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
                            EdgeInsets.symmetric(horizontal: 15, vertical: 1)),
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
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    btnback(),

                    Stack(
                      clipBehavior: Clip.none,
                      children: [
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Text('กรุณากรอกชื่อผู้ใช้งานและรหัสผ่าน',
                                    style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                            height: 3,
                                            fontWeight: FontWeight.bold))),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(2, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'อีเมล',
                                      hintStyle: GoogleFonts.notoSansThai(),
                                      icon: IconButton(
                                        icon: Image.asset(
                                            'lib/assets/email.png',
                                            height: 24,
                                            width:
                                                24), // ต้องปรับ path ตามที่ไฟล์อยู่
                                        onPressed: () {
                                          // Handle Facebook login
                                        },
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      onPressed: logHello,
                                      child: Text(
                                        'กู้รหัสผ่านด้วยวิธีอื่น',
                                        style: GoogleFonts.notoSansThai(
                                            textStyle:
                                                TextStyle(color: Colors.grey)),
                                      )),
                                ),
                                Divider(
                                  indent: 60,
                                  endIndent: 60,
                                  thickness: 2,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      'กรุณากรอกอีเมลของท่านที่ใช้ในการสมัครสมาชิก',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                            height: 3),
                                      )),
                                ),
                                SizedBox(height: 15),
                                ElevatedButton(
                                  onPressed: () {
                                    showpopup();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'ถัดไป',
                                        style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      IconButton(
                                        icon: Image.asset(
                                            'lib/assets/arrow.png',
                                            height: 24,
                                            width: 24),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(138, 124, 227, 1)),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 1)),
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

                    // Padding(
                    //   padding: const EdgeInsets.all(0),
                    //   child: Container(
                    //     width: double.infinity,
                    //     padding: EdgeInsets.all(28),
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
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
