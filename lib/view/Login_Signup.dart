import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/AuthScreen/AuthBtn.dart';
import '../components/AuthScreen/AuthField.dart';
import '../components/AuthScreen/CurvePainter.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({super.key});

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    var mysize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgrondColor,
      body: Stack(
        children: [
          CustomPaint(
            size: Size(mysize.width, mysize.height),
            painter: CurvePainter(),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              height: mysize.height - 50,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/palestine.png',
                      width: 75,
                    ),
                    Text(
                      'ديوان رئيس الوزراء',
                      style: GoogleFonts.arefRuqaa(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AnimatedContainer(
                      padding: const EdgeInsets.only(top: 25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: mysize.width - 50,
                      height: isLogin ? 400 : 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue[100]!,
                              spreadRadius: 1,
                              blurRadius: 15,
                              offset: Offset(0, 3),
                            )
                          ]),
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.bounceInOut,
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              switchBtn(),
                              const SizedBox(
                                height: 20,
                              ),
                              !isLogin
                                  ? AuthField(labelText: 'Name')
                                  : const SizedBox(),
                              AuthField(
                                labelText: 'Email',
                              ),
                              AuthField(labelText: 'Password'),
                              !isLogin
                                  ? AuthField(labelText: 'Confirm Password')
                                  : const SizedBox(),
                              const SizedBox(
                                height: 20,
                              ),
                              AuthBtn(isLogin: isLogin),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'أو',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/face.png',
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    'assets/images/goog.png',
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    'assets/images/twit.png',
                                    width: 40,
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container switchBtn() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      width: 260,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            curve: Curves.easeIn,
            left: isLogin ? 0 : 130,
            child: Container(
              alignment: Alignment.center,
              width: 130,
              height: 35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        kprimColor,
                        ksecColor,
                      ]),
                  borderRadius: BorderRadius.circular(20),
                  color: kprimColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLogin = true;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: isLogin ? Colors.white : kprimColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLogin = false;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  child: Text(
                    'تسجيل',
                    style: TextStyle(
                      color: isLogin ? kprimColor : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
