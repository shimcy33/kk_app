import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:krispy_kreme/utils/extensions.dart';

import '../utils/constants.dart';
import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer? _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 1000), () async {
      NavRoutes.navToRewardHomeScreen(context);
    });

    super.initState();
  }

  @override
  void dispose() {
    if (_timer?.isActive ?? false) {
      _timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return Scaffold(
          body: Stack(
            children: [
              SvgPicture.asset(AssetConstants.onBoardDotPattern,width: context.sw(),),
              Center(child: SvgPicture.asset(AssetConstants.onBoardLogo)),
            ],
          ),
        );
      },
    );
  }
}
