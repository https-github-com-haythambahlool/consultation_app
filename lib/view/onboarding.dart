import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/view/Login_Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  LiquidController _controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        LiquidSwipe(
            enableSideReveal: true,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color:
                  _controller.currentPage == 0 || _controller.currentPage == 2
                      ? backgrondColor
                      : kprimColor,
            ),
            onPageChangeCallback: (index) {
              setState(() {});
            },
            enableLoop: false,
            liquidController: _controller,
            pages: [
              onBoardingPage(
                backgroundColor: backgrondColor,
                lottieLink: 'assets/jsonsAnimations/register.json',
                title: 'Sign Up',
                description:
                    'Create your Account to use the features of our App',
                textColor: kprimColor,
                desColor: Colors.black54,
              ),
              onBoardingPage(
                backgroundColor: kprimColor,
                lottieLink: 'assets/jsonsAnimations/5amW2N5Vp7.json',
                title: 'Mail us',
                description:
                    'Write your Mail and Attach your documents then send it to us',
                textColor: backgrondColor,
                desColor: Colors.black,
              ),
              onBoardingPage(
                backgroundColor: backgrondColor,
                lottieLink: 'assets/jsonsAnimations/followUp.json',
                title: 'Follow up',
                description: 'Follow up Status and response your Mail',
                textColor: kprimColor,
                desColor: Colors.black54,
              ),
            ]),
        _controller.currentPage == 2
            ? GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Login_Signup();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 50, left: 200),
                  height: 40,
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          'Next',
                          style: TextStyle(color: backgrondColor, fontSize: 25),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: backgrondColor,
                        size: 30,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: kprimColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            : SizedBox(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: AnimatedSmoothIndicator(
            activeIndex: _controller.currentPage,
            count: 3,
            effect: WormEffect(
              spacing: 16,
              dotColor: Colors.black38,
              activeDotColor: Colors.black54,
            ),
            onDotClicked: (index) {
              _controller.animateToPage(page: index, duration: 500);
            },
          ),
        ),
      ]),
    );
  }
}

class onBoardingPage extends StatelessWidget {
  onBoardingPage(
      {super.key,
      required this.backgroundColor,
      required this.lottieLink,
      required this.title,
      required this.description,
      required this.textColor,
      required this.desColor});
  Color backgroundColor;
  Color textColor;
  Color desColor;
  String lottieLink;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      constraints: const BoxConstraints.expand(),
      child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              lottieLink,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: desColor, fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
