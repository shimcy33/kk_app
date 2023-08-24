import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krispy_kreme/utils/color_palette.dart';
import 'package:krispy_kreme/utils/extensions.dart';

import '../../utils/constants.dart';
import '../../utils/font_palette.dart';
import '../../widgets/custom_text_field.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AssetConstants.backIcon,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        StringConstants.back,
                        style: FontPalette.grey18W300,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  StringConstants.hello,
                  style: FontPalette.red36W700,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Text(
                  StringConstants.letsCreateAcct,
                  style: FontPalette.green20W500,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  StringConstants.email,
                  style: FontPalette.grey18W400,
                ),
                CustomTextFormField(
                  hintText: "",
                  labelText: "",
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  StringConstants.confirmEmail,
                  style: FontPalette.grey18W400,
                ),
                CustomTextFormField(
                  hintText: "",
                  labelText: "",
                  isObscure: true,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  StringConstants.passwordStar,
                  style: FontPalette.grey18W400,
                ),
                CustomTextFormField(
                  hintText: "",
                  labelText: "",
                  isObscure: true,
                  suffix: prefixOrSuffixWidget(AssetConstants.formObscureIcon),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  StringConstants.confirmPassword,
                  style: FontPalette.grey18W400,
                ),
                CustomTextFormField(
                  hintText: "",
                  labelText: "",
                  isObscure: true,
                  suffix: prefixOrSuffixWidget(AssetConstants.formObscureIcon),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        height: 24.h,
                        width: 24.h,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                            border: Border.all(color: ColorPalette.formGrey)),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: StringConstants.agreeTo,
                            style: FontPalette.grey18W300,
                          ),
                          TextSpan(
                            text: StringConstants.termsCondition,
                            style: FontPalette.grey18W400Underline,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                SizedBox(
                  width: context.sw(),
                  height: 48.h,
                  child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 30.w, vertical: 12.h)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFCE0E2D)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                          ))),
                      onPressed: () {},
                      child: Text(StringConstants.createAcct,
                          style: FontPalette.white14)),
                ),
                SizedBox(
                  height: 66.h,
                ),
              ],
            ),
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
