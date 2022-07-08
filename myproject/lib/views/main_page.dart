import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/gen/assets.gen.dart';
import 'package:myproject/my_colors.dart';
import 'package:myproject/my_component.dart';
import 'package:myproject/views/home_screen.dart';
import 'package:myproject/views/profile_screen.dart';
import '../Module/fake_data.dart';

void main() {}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme;
    var bodyMargin = size.width / 12.53;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 26, 0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Image.asset(Assets.images.a1.keyName,
                  height: size.height / 13.63),
              const Padding(
                padding: EdgeInsets.fromLTRB(26, 0, 0, 0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              )
            ],
          )),
      body: SafeArea(
        child: Stack(
          children: [
            homeScreen(
                size: size, fontTheme: fontTheme, bodyMargin: bodyMargin),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: HomeButtonNav(
                  size: size, bodyMargin: bodyMargin, fontTheme: fontTheme),
            )
          ],
        ),
      ),
    );
  }
}
