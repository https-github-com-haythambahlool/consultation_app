import 'package:flutter/material.dart';

import '../../constant/const.dart';

class SwitchBtn extends StatefulWidget {
  SwitchBtn({
    super.key,
    required this.isLogin,
  });

  bool isLogin;

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            curve: Curves.easeIn,
            left: widget.isLogin ? 0 : 130,
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
                    widget.isLogin = true;
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
                      color: widget.isLogin ? Colors.white : kprimColor,
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
                    widget.isLogin = false;
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
                      color: widget.isLogin ? kprimColor : Colors.white,
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
