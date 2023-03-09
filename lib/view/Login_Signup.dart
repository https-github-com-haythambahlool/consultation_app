import 'dart:async';
import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:consultation_app/components/MySnackbar.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/model_view/Auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../components/AuthScreen/AuthBtn.dart';
import '../components/AuthScreen/AuthField.dart';
import '../components/AuthScreen/CurvePainter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../providers/language_provider.dart';
import '../constant/const_Api.dart';
import 'home.dart';


class Login_Signup extends StatefulWidget {
  const Login_Signup({super.key});

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  Auth auth = Auth();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirPassword = TextEditingController();
  TextEditingController username = TextEditingController();
  bool _isValidateEmail = false;
  bool _isValidatePassword = false;
  bool _isValidateConfirm = false;
  bool _isValidateName = false;

  String errorEmail = 'Required Email';
  String errorPassword = 'Required Password';
  String errorname = 'Required Name';
  String errorConfirm = 'The password not match';

  bool _isAuth = false;

  bool isLogin = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mysize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgrondColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ksecColor,
        onPressed: () {
          Provider.of<LanguageProvider>(context, listen: false)
              .changeLanguage();
        },
        child: Icon(Icons.language),
      ),
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
                      'assets/images/logo.jpg',
                      width: 120,
                    ),
                    Text(
                      '',
                      style: GoogleFonts.arefRuqaa(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    AnimatedContainer(
                      padding: const EdgeInsets.only(top: 25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: mysize.width - 50,
                      height: isLogin ? 450 : 560,
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

                                  ? AnimatedContainer(
                                      duration: Duration(),
                                      height: 65,
                                      margin: EdgeInsets.only(top: 10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: TextFormField(
                                          controller: username,
                                          decoration: inputDecoration.copyWith(
                                            labelText: AppLocalizations.of(context)!.name),
                                            errorText: _isValidateName
                                                ? errorname
                                                : null,
                                          )))

                                  // AuthField(
                                  //     labelText: 'Name',
                                  //     controller: username,
                                  //   )
                                  : const SizedBox(),
                              AnimatedContainer(
                                  duration: Duration(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  margin: EdgeInsets.only(top: 10),
                                  height: 65,
                                  child: TextFormField(
                                      controller: email,
                                      decoration: inputDecoration.copyWith(
                                        labelText:AppLocalizations.of(context)!.email,
                                        errorText: _isValidateEmail
                                            ? errorEmail
                                            : null,
                                      ))),
                              AnimatedContainer(
                                  duration: Duration(),
                                  height: 65,
                                  margin: EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: TextFormField(
                                      controller: password,
                                      decoration: inputDecoration.copyWith(
                                        labelText:  AppLocalizations.of(context)!.password),
                                        errorText: _isValidatePassword
                                            ? errorPassword
                                            : null,
                                      ))),
                              !isLogin
                                  ? AnimatedContainer(
                                      duration: Duration(),
                                      height: 65,
                                      margin: EdgeInsets.only(top: 10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: TextFormField(
                                          controller: confirPassword,
                                          decoration: inputDecoration.copyWith(
                                            labelText: AppLocalizations.of(context)!
                                          .confirmPassword)
                                            errorText: _isValidateConfirm
                                                ? errorConfirm
                                                : null,
                                          )))
                                  : const SizedBox(),
                              const SizedBox(
                                height: 20,
                              ),
                              AuthBtn(
                                isLogin: isLogin,
                                onTap: () {
                                  if (isLogin) {
                                    login();
                                  } else {
                                    register();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                AppLocalizations.of(context)!.or,

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

  login() {
    if (password.text != '' && email.text != '') {
      _isAuth = true;
      auth.login(email.text, password.text).then((value) {
        if (value) {
          email.clear();
          password.clear();
          errorPassword = 'Required Password';
          errorEmail = 'Required Email';
          _isAuth = false;
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(MySnackbar().mySnackBar(
                body: 'Success Login to ${auth.user!.name}',
                title: '',
                type: ContentType.success));
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Home();
          }));
        } else {
          email.clear();
          password.clear();
          _isAuth = false;

          setState(() {
            if (auth.errorMessage['error'] != null) {
              if (auth.errorMessage['error']['password'] != null) {
                errorPassword = auth.errorMessage['error']['password'][0];
                _isValidatePassword = true;
              } else {
                errorPassword = 'Required Password';
                _isValidatePassword = false;
              }

              if (auth.errorMessage['error']['email'] != null) {
                errorEmail = auth.errorMessage['error']['email'][0];
                _isValidateEmail = true;
              } else {
                errorEmail = 'Required Email';
                _isValidateEmail = false;
              }
            } else {
              _isValidateEmail = false;
              _isValidatePassword = false;
              errorEmail = 'Required Email';
              errorPassword = 'Required Password';
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  MySnackbar().mySnackBar(
                      body: auth.errorMessage['message'],
                      title: 'Oh Sorry!!',
                      type: ContentType.failure),
                );
            }
          });
        }
      });
    } else {
      setState(() {
        password.text == ''
            ? _isValidatePassword = true
            : _isValidatePassword = false;
        email.text == '' ? _isValidateEmail = true : _isValidateEmail = false;
      });
    }
  }

  register() {
    if (password.text != '' &&
        email.text != '' &&
        username.text != '' &&
        confirPassword.text != '') {
      if (password.text == confirPassword.text) {
        setState(() {
          _isValidateConfirm = false;
        });
        auth.register(email.text, password.text, username.text).then((value) {
          if (value) {
            email.clear();
            password.clear();
            username.clear();
            confirPassword.clear();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackbar().mySnackBar(
                  body: 'Success Register ${auth.user!.name}',
                  title: '',
                  type: ContentType.success));
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Home();
            }));
          } else {
            setState(() {
              if (auth.errorMessage['error'] != null) {
                if (auth.errorMessage['error']['password'] != null) {
                  errorPassword = auth.errorMessage['error']['password'][0];
                  _isValidatePassword = true;
                } else {
                  errorPassword = 'Required Password';
                  _isValidatePassword = false;
                }

                if (auth.errorMessage['error']['email'] != null) {
                  errorEmail = auth.errorMessage['error']['email'][0];
                  _isValidateEmail = true;
                } else {
                  errorEmail = 'Required Email';
                  _isValidateEmail = false;
                }
              } else {
                _isValidateEmail = false;
                _isValidatePassword = false;
                _isValidateConfirm = false;
                _isValidateName = false;

                errorEmail = 'Required Email';
                errorPassword = 'Required Password';
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    MySnackbar().mySnackBar(
                        body: auth.errorMessage['message'],
                        title: 'Oh Sorry!!',
                        type: ContentType.failure),
                  );
              }
            });
          }
        });
      } else {
        setState(() {
          _isValidateEmail = false;
          _isValidateName = false;
          _isValidatePassword = false;
          errorConfirm = 'The password not match';
          _isValidateConfirm = true;
        });
      }
    } else {
      setState(() {
        password.text == ''
            ? _isValidatePassword = true
            : _isValidatePassword = false;
        email.text == '' ? _isValidateEmail = true : _isValidateEmail = false;
        username.text == '' ? _isValidateName = true : _isValidateName = false;
      });
    }
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
                    AppLocalizations.of(context)!.signUp,

                    style: TextStyle(
                      color: isLogin ? Colors.white : kprimColor,
                      fontSize: 22,
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
                    AppLocalizations.of(context)!.login,

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
