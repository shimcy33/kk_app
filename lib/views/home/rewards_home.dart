import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krispy_kreme/utils/color_palette.dart';
import 'package:krispy_kreme/utils/extensions.dart';

import '../../utils/constants.dart';
import '../../utils/font_palette.dart';
import '../../widgets/my_accout_list_tile.dart';

class RewardsHomeScreen extends StatefulWidget {
  const RewardsHomeScreen({Key? key}) : super(key: key);

  @override
  State<RewardsHomeScreen> createState() => _RewardsHomeScreenState();
}

class _RewardsHomeScreenState extends State<RewardsHomeScreen> {
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
      backgroundColor: ColorPalette.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  // height: context.sh(),
                  width: double.maxFinite,
                  child: Container(
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                          height: context.sh(),
                        ),
                        Container(
                          height: 253.h,
                          color: ColorPalette.primaryColor,
                        ),
                        Positioned(
                          top: 170.h,
                          left: 0,
                          right: 0,
                          child: ClipPath(
                            child: Container(
                              color: Colors.white,
                              width: double.infinity,
                              height: 85.h,
                            ),
                            clipper: ClipPathClass(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Positioned(
                            child: Column(
                              children: [
                                Text(
                                  StringConstants.gdEvng,
                                  style: FontPalette.white20W700,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "JOSHUA",
                                  style: FontPalette.white28W500,
                                  textAlign: TextAlign.center,
                                ),
                                SvgPicture.asset(
                                    AssetConstants.homeDonutSmiley),
                                Text(
                                  "4000",
                                  style: FontPalette.black32W500,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Smiles",
                                  style: FontPalette.black18W400,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            AssetConstants.homeBarcode),
                                        Text(
                                          StringConstants.showRewards,
                                          style: FontPalette.green18W500,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            AssetConstants.homeSmiley),
                                        Text(
                                          StringConstants.addBox,
                                          style: FontPalette.green18W500,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 31.h,
                                ),
                                Text(
                                  StringConstants.whatsNew,
                                  style: FontPalette.red26W700,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Container(
                                  height: 208.h,
                                  width: context.sw(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 16,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: SvgPicture.asset(
                                            AssetConstants.homeBanner2),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                StringConstants.deliveryClick,
                                                style: FontPalette.green16W500,
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                StringConstants.nowGetDonuts,
                                                style: FontPalette.grey18W300,
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  StringConstants.orderNow,
                                                  style: FontPalette
                                                      .grey18W400Underline,
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                    height: 208.h,
                                    width: context.sw(),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: SvgPicture.asset(
                                        AssetConstants.homeBarcode,
                                        height: 208.h,
                                        width: context.sw(),
                                      ),
                                    )),
                                SizedBox(
                                  height: 56.h,
                                ),
                                Text(
                                  StringConstants.needHelp,
                                  style: FontPalette.red26W700,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 13.h,
                                ),
                                MyAccountListTile(
                                  title: StringConstants.helpCenter,
                                  onTap: () {},
                                  bottomPadding: 20.h,
                                  style: FontPalette.green16W500,
                                  color: ColorPalette.red,
                                ),
                                MyAccountListTile(
                                  title: StringConstants.helpCenter,
                                  onTap: () {},
                                  bottomPadding: 20.h,
                                  style: FontPalette.green16W500,
                                  color: ColorPalette.red,
                                ),
                                MyAccountListTile(
                                  title: StringConstants.helpCenter,
                                  onTap: () {},
                                  bottomPadding: 20.h,
                                  style: FontPalette.green16W500,
                                  color: ColorPalette.red,
                                ),
                                MyAccountListTile(
                                  title: StringConstants.helpCenter,
                                  onTap: () {},
                                  style: FontPalette.green16W500,
                                  color: ColorPalette.red,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SvgPicture.asset(AssetConstants.homeDonut),
                                SizedBox(
                                  height: 20.h,
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                            ),
                            top: 31.h,
                            left: 0,
                            right: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
