import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Forgot_Pass/Forgot_Pass_screen.dart';
import 'package:flutter_application_1/screen/regis/regis_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  void logHello() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(138, 124, 227, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image(
                      width: MediaQuery.of(context).size.width * 0.2,
                      image: AssetImage('lib/assets/ramaLogo.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'มูลนิธิรามาธิบดี',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'ในพระราชูปถัมภ์',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(27.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ชื่อผู้ใช้งาน', style: TextStyle(height: 3)),
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
                          hintText: 'ชื่อผู้ใช้งาน',
                          icon: IconButton(
                            icon: Image.asset('lib/assets/user.png',
                                height: 24,
                                width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
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
                    SizedBox(height: 20),
                    Text('รหัสผ่าน', style: TextStyle(height: 3)),
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'รหัสผ่าน',
                          icon: IconButton(
                            icon: Image.asset('lib/assets/pass.png',
                                height: 24,
                                width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
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
                    TextButton(
                        onPressed: logHello,
                        child: Text(
                          'ลืมรหัสผ่าน ?',
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPass()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'เข้าสู่ระบบ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Image.asset('lib/assets/arrow.png',
                                height: 24, width: 24),
                            onPressed: () {},
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'หรือเข้าสู่ระบบด้วย',
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey[600], height: 4.5),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Image.asset('lib/assets/google.png',
                              height: 24,
                              width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                        IconButton(
                          icon: Image.asset('lib/assets/apple.png',
                              height: 24,
                              width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                        IconButton(
                          icon: Image.asset('lib/assets/facebook_icon.jpg',
                              height: 24,
                              width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                        IconButton(
                          icon: Image.asset('lib/assets/line.jpg',
                              height: 24,
                              width: 24), // ต้องปรับ path ตามที่ไฟล์อยู่
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset('lib/assets/anami.png',
                              height: 30,
                              width: 30), // ต้องปรับ path ตามที่ไฟล์อยู่
                          onPressed: () {},
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'คุณยังไม่มีบัญชี RAMA SuperApp?',
                            style: TextStyle(fontSize: 12),
                          ),
                          TextButton(
                            onPressed: logHello,
                            child: Text(' ลงทะเบียน'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
    );
  }
}
