import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import '../utils/font_palette.dart';

class MyAccountListTile extends StatelessWidget {
  final String? title;
  final double? topPadding;
  final double? bottomPadding;
  final Function()? onTap;

  const MyAccountListTile({Key? key, this.title, this.onTap, this.topPadding, this.bottomPadding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding:  EdgeInsets.only(top: topPadding??0.h,bottom: bottomPadding??0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? "",
              style: FontPalette.grey18W300,
            ),
            SvgPicture.asset(
              AssetConstants.forwardIcon,
            ),
          ],
        ),
      ),
    );
  }
}
