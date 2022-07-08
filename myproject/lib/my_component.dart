import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/views/main_page.dart';
import 'package:myproject/views/profile_screen.dart';
import 'my_colors.dart';

class techBlogDivider extends StatelessWidget {
  const techBlogDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      indent: size.width / 6,
      endIndent: size.width / 6,
      color: Color.fromARGB(255, 112, 112, 112),
    );
  }
}

class HomeButtonNav extends StatelessWidget {
  const HomeButtonNav(
      {Key? key,
      required this.size,
      required this.bodyMargin,
      required this.fontTheme})
      : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 9.5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: MyGradiantColor.buttomNavGradientColor,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: SizedBox(
        height: size.height / 11,
        width: size.width / 1.8,
        child: Padding(
          padding: EdgeInsets.fromLTRB(bodyMargin, 8, bodyMargin, 12),
          child: Container(
            width: size.width / 1.38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                    colors: MyGradiantColor.buttomNavColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  icon: const Icon(Icons.home_filled),
                  color: Colors.white,
                  iconSize: 35,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_note),
                  color: Colors.white,
                  iconSize: 35,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ProfileScreen(size: size, bodyMargin: bodyMargin),
                    ));
                  },
                  icon: const Icon(CupertinoIcons.person_fill),
                  color: Colors.white,
                  iconSize: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
