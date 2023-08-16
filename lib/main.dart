import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:krispy_kreme/utils/color_palette.dart';
import 'package:krispy_kreme/utils/font_palette.dart';
import 'package:krispy_kreme/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) =>
      const KrispyKremeApp());
  // );
}

class KrispyKremeApp extends StatelessWidget {
  const KrispyKremeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krispy Kreme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontPalette.themeFont,
          primarySwatch: ColorPalette.materialPrimary,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  systemNavigationBarIconBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.light,
                  statusBarBrightness: Brightness.dark)),
          textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.black)),
      onGenerateRoute: (settings) => RouteGenerator().generateRoute(settings),
    );
  }
}