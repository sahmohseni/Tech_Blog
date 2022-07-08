import 'package:flutter/material.dart';
import 'package:myproject/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myproject/views/main_page.dart';
import 'package:myproject/my_colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.images.a1.keyName, height: 75),
          const SizedBox(
            height: 25,
          ),
          const SpinKitSpinningLines(
            color: MyColors.primaryColor,
            size: 35,
          )
        ],
      ),
    );
  }
}
