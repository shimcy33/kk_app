import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krispy_kreme/utils/color_palette.dart';

import '../../utils/constants.dart';
import '../../utils/font_palette.dart';
import '../../widgets/my_accout_list_tile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                Row(
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
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  StringConstants.myAcct,
                  style: FontPalette.green20W500,
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  "Hey Joshua",
                  style: FontPalette.red26W700,
                ),
                SizedBox(
                  height: 16.h,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: StringConstants.memNum,
                      style: FontPalette.grey18W400,
                    ),
                    TextSpan(
                      text: "0401129430109",
                      style: FontPalette.grey18W300,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 16.h,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: StringConstants.rewNum,
                      style: FontPalette.grey18W400,
                    ),
                    TextSpan(
                      text: "22116600123340646",
                      style: FontPalette.grey18W300,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 16.h,
                ),

                ///My orders
                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),
                MyAccountListTile(
                  title: StringConstants.myOrders,
                  onTap: () {},
                  topPadding: 16.h,
                  bottomPadding: 16.h,
                ),
                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),
                SizedBox(
                  height: 16.h,
                ),

                /// Rewards account
                Text(
                  StringConstants.rewAcct,
                  style: FontPalette.green20W500,
                ),

                SizedBox(
                  height: 16.h,
                ),
                MyAccountListTile(
                    title: StringConstants.rewHistory, onTap: () {}),
                SizedBox(
                  height: 16.h,
                ),

                MyAccountListTile(
                    title: StringConstants.storedPayMethods, onTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),
                SizedBox(
                  height: 16.h,
                ),

                ///My Acct
                Text(
                  StringConstants.myAcct,
                  style: FontPalette.green20W500,
                ),
                SizedBox(
                  height: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.acctInfo,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.editAcctInfo,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),
                MyAccountListTile(
                  title: StringConstants.addressBook,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.myFav,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),
                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),

                ///Communication
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  StringConstants.communication,
                  style: FontPalette.green20W500,
                ),
                SizedBox(
                  height: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.notifications,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.commPreference,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),

                ///help and faq
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  StringConstants.helpFaq,
                  style: FontPalette.green20W500,
                ),
                SizedBox(
                  height: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.helpCenter,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.smilesInfo,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),
                MyAccountListTile(
                  title: StringConstants.privacyPolicy,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),

                MyAccountListTile(
                  title: StringConstants.termsAndCondition,
                  onTap: () {},
                  bottomPadding: 16.h,
                ),
                Divider(
                  height: 2.h,
                  color: ColorPalette.formGrey,
                ),

                /// sign out
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    StringConstants.signOut,
                    style: FontPalette.grey18W400Underline,
                  ),
                ),
                SizedBox(
                  height: 35.h,
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
