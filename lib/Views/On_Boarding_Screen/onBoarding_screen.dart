import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Form_Screen/sign_in_screen.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int page = -1;
  PageController controller = PageController(initialPage: 1000);
  Timer? timer;

  List pageArr = [
    {
      "title": "get_inspired".tr,
      "sub_title": "unleash_your_creativity".tr,
      "img": "assets/images/onBoarding1.png"
    },
    {
      "title": "easy_to_use".tr,
      "sub_title": "user_friendly_interface".tr,
      "img": "assets/images/onBoarding2.png"
    },
    {
      "title": "join_event".tr,
      "sub_title": "participate_in_competitions".tr,
      "img": "assets/images/onBoarding3.png"
    },
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      page = controller.page!.round() % pageArr.length;
      if (mounted) {
        setState(() {});
      }
    });
    startAutoScroll();
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  void startAutoScroll() {
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemBuilder: (context, index) {
                var actualIndex = index % pageArr.length;
                var pObj = pageArr[actualIndex];
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                  width: media.width,
                  child: Column(
                    children: [
                      Text(
                        pObj["title"].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        pObj["sub_title"].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: primaryColor.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: media.width * 0.25),
                      Image.asset(
                        pObj["img"].toString(),
                        width: media.width * 0.8,
                        height: media.width * 0.8,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "skip".tr,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: pageArr.map((pObj) {
                          var index = pageArr.indexOf(pObj);
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: page == index
                                  ? primaryColor
                                  : primaryColor.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(7.5),
                            ),
                          );
                        }).toList(),
                      ),
                      TextButton(
                        onPressed: () {
                          if (page < pageArr.length - 1) {
                            controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                // builder: (context) => const SignInScreen(),
                                builder: (context) => const SigninScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "next".tr,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
