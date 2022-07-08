import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myproject/my_colors.dart';
import 'package:myproject/views/splash_screen.dart';
import 'package:myproject/views/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: MyColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyColors.systemNavigationBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: MyColors.homePosterHeadlineColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'dana'),
              subtitle1: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: MyColors.homePosterSubtitleColor),
              subtitle2: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 40, 107, 184)),
              headline3: TextStyle(
                  color: Colors.black,
                  fontFamily: 'dana',
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
              headline4: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'dana'),
              headline5: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor))),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('fa', 'IR')],
      home: SafeArea(
        child: Scaffold(
            backgroundColor: MyColors.scaffoldColor, body: SplashScreen()),
      ),
    );
  }
}
