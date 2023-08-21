import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krispy_kreme/utils/constants.dart';
import 'package:krispy_kreme/utils/extensions.dart';

import '../../utils/color_palette.dart';
import '../../utils/font_palette.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                AssetConstants.loginDotPattern,
                width: context.sw(),
              ),
              SizedBox(
                height: 78.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: CustomTextFormField(
                  hintText: StringConstants.emailAddress,
                  // contentPadding: EdgeInsets.only(right: 44.w),
                  prefixIcon: prefixOrSuffixWidget(AssetConstants.formMailIcon),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: CustomTextFormField(
                  hintText: StringConstants.password,
                  isObscure: true,
                  // contentPadding: EdgeInsets.only(right: 44.w),
                  prefixIcon: prefixOrSuffixWidget(AssetConstants.formPasswordKeyIcon),
                  suffix: prefixOrSuffixWidget(AssetConstants.formObscureIcon),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                  child: SizedBox(
                    width: context.sw(),
                    height: 48.h,
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
                        onPressed: () {},
                        child: Text(StringConstants.login,
                            style: FontPalette.white14)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24.w)),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  StringConstants.forgotPwd,
                  style: FontPalette.grey18W400Underline,
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Container(
                width: context.sw() - 130.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        // spreadRadius: 2,
                        blurRadius: 10.r,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 30.w, vertical: 12.h)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                          ))),
                      onPressed: () {},
                      child: Text(StringConstants.createAcct,
                          style: FontPalette.green16W500)),
                ),
              ),
              SizedBox(
                height: 66.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget prefixOrSuffixWidget(String? asset) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 15.w,
        ),
        SvgPicture.asset(
          asset ?? "",
        ),
        SizedBox(
          width: 12.w,
        ),
      ],
    );
  }
}
