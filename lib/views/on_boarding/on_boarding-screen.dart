import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krispy_kreme/utils/extensions.dart';
import 'package:krispy_kreme/utils/font_palette.dart';
import 'package:krispy_kreme/utils/routes.dart';

import '../../../utils/color_palette.dart';
import '../../utils/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  final _pageController = PageController();
  int? activeIndex = 0;

  // AnimationController? animationController;
  // Animation<double>? nextPage;

  @override
  void initState() {
    _pageController.addListener(() {
      print(activeIndex);
    });
    // //Start at the controller and set the time to switch pages
    // animationController =
    //     AnimationController(vsync: this, duration: const Duration(seconds: 10));
    // nextPage = Tween(begin: 0.0, end: 1.0).animate(animationController!);
    //
    // //Add listener to AnimationController for know when end the count and change to the next page
    // animationController?.addListener(() {
    //   if (animationController?.status == AnimationStatus.completed) {
    //     animationController?.reset(); //Reset the controller
    //     final int page = 4; //Number of pages in your PageView
    //     if (activeIndex! < page) {
    //       activeIndex = activeIndex! + 1;
    //       _pageController.animateToPage(activeIndex!,
    //           duration: Duration(milliseconds: 100), curve: Curves.easeInSine);
    //     } else {
    //       activeIndex = 0;
    //     }
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WillPopScope(
        onWillPop: () => _onWillPop(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 450.h,
                child: PageView(
                  controller: _pageController,
                  children: _buildSliderPages(),
                  onPageChanged: (index) {
                    setState(
                      () {
                        activeIndex = index;
                      },
                    );
                  },
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 44.h,
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: activeIndex!.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.grey.withOpacity(0.5), // Inactive color
                      activeColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  SizedBox(
                    width: context.sw() - 130.w,
                    child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 12.h)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFCE0E2D)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ))),
                        onPressed: () {
                          NavRoutes.navToCreateAccount(context);
                        },
                        child: Text(StringConstants.register,
                            style: FontPalette.white14)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: context.sw() - 130.w,
                    child: TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 12.h)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorPalette.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.r),
                            ))),
                        onPressed: () {
                          NavRoutes.navToLogin(context);
                        },
                        child: Text(StringConstants.login,
                            style: FontPalette.white14)),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      StringConstants.continueAsGuest,
                      style: FontPalette.grey18W400Underline,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  List<Widget> _buildSliderPages() {
    /// slider widgets
    return [
      SizedBox(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(AssetConstants.onBoardSmile,
                    height: 143.h, width: context.sw()),
                SizedBox(height: 73.h),
                RichText(
                    text: TextSpan(//style for all textspan
                        children: [
                  TextSpan(
                      text: StringConstants.earn,
                      style: FontPalette.green28W500),
                  const TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                      text: StringConstants.smile,
                      style: FontPalette.red36W700),
                ])),
                Text(
                  StringConstants.everyTimeYouSpend,
                  style: FontPalette.green28W500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(StringConstants.dummyData4,
                      textAlign: TextAlign.center,
                      style: FontPalette.grey18W300),
                ),
              ],
            )),
      ),
      SizedBox(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(AssetConstants.onBoardBox,
                    height: 143.h, width: context.sw()),
                SizedBox(height: 73.h),
                Text(StringConstants.doughnuts, style: FontPalette.red36W700),
                Text(StringConstants.whenEvrYouWant,
                    style: FontPalette.green28W500),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(StringConstants.dummyData3,
                      textAlign: TextAlign.center,
                      style: FontPalette.grey18W300),
                ),
              ],
            )),
      ),
      SizedBox(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(AssetConstants.onBoardDonut,
                    height: 143.h, width: context.sw()),
                SizedBox(height: 30.h),
                Text(StringConstants.birthdays, style: FontPalette.red36W700),
                Text(StringConstants.weLoveThem,
                    style: FontPalette.green28W500),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(StringConstants.joinReward,
                      textAlign: TextAlign.center,
                      style: FontPalette.grey18W300),
                ),
              ],
            )),
      ),
    ];
  }

  Future<bool> _onWillPop() async {
    if (activeIndex != 0) {
      setState(() {
        activeIndex = activeIndex! - 1;
      });
      return false;
    } else {
      return true;
    }
  }
}
