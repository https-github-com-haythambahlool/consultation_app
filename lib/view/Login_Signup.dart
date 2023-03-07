import 'dart:convert';

import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/model_view/Auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../components/AuthScreen/AuthBtn.dart';
import '../components/AuthScreen/AuthField.dart';
import '../components/AuthScreen/CurvePainter.dart';
import '../constant/const_Api.dart';
import 'home.dart';

class Login_Signup extends StatefulWidget {
  const Login_Signup({super.key});

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  Auth auth = Auth();
  String? email;
  String? password;
  String? username;

  bool isLogin = true;

  @override
  void initState() {
    // auth.register('o7778@o.com', '123456', 'khalil');
    auth.login('o7778@o.com', '123456').then((value) {
      //  auth.getUser();
      //auth.logout();
      // auth.createUser();
      //auth.getUserId();
      // auth.deleteUser();
      // auth.changePassword();
      // auth.changeRole();
      // auth.getMails();

      //// auth.getSingleMail(5);
      //// auth.updateMail();
      //  auth.getSingleMailCopy();
      // auth.getAllCategories();
      ////auth.getSingleCategores(1);
      // auth.createCategories();
      // auth.getAlltags();
      // auth.getAlltagsWithMail();
      //  auth.getAlltagsWithId();
      //  auth.createtags();
      // auth.getAllSenders();
      // auth.getSingleStatus();
      //  auth.getRole();
      // auth.Search(10);
      // auth.getAllSenders();
      // auth.getSingleSenders();
      // auth.createSenders();
      // auth.updateSenders();
      // auth.deleteSenders();
    });

    //// auth.createMail();

    // TODO: implement initState
    super.initState();
  }

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
                              switchBtn(email: null, password: null),
                              const SizedBox(
                                height: 20,
                              ),
                              !isLogin
                                  ? AuthField(
                                      labelText: 'Name',
                                      onchanged: (value) {
                                        username = value;
                                      },
                                    )
                                  : const SizedBox(),
                              AuthField(
                                labelText: 'Email',
                                onchanged: (value) {
                                  email = value;
                                },
                              ),
                              AuthField(
                                labelText: 'Password',
                                onchanged: (value) {
                                  password = value;
                                },
                              ),
                              !isLogin
                                  ? AuthField(
                                      labelText: 'Confirm Password',
                                      onchanged: (value) {
                                        password = value;
                                      },
                                    )
                                  : const SizedBox(),
                              const SizedBox(
                                height: 20,
                              ),
                              AuthBtn(
                                isLogin: isLogin,
                                onTap: () {
                                  auth.login('o@o.com', '123456');
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Home();
                                  }));
                                },
                              ),
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

  Container switchBtn({required email, required password}) {
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
