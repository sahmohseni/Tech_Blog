import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/gen/assets.gen.dart';
import 'package:myproject/my_colors.dart';
import 'package:myproject/my_strings.dart';
import 'package:myproject/views/main_page.dart';

import '../my_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
    required this.size,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;

  final double bodyMargin;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme;
    var bodyMargin = size.width / 12.53;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  Assets.images.profileImage.keyName,
                  height: 95,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.edit_sharp,
                      size: 25,
                      color: MyColors.techBlogBlue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      MyStrings.editProfileImage,
                      style: fontTheme.subtitle2,
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(MyStrings.profileName, style: fontTheme.headline5),
                SizedBox(
                  height: 10,
                ),
                Text(
                  MyStrings.profileEmail,
                  style: fontTheme.headline4,
                ),
                SizedBox(
                  height: 30,
                ),
                techBlogDivider(size: size),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: MyColors.primaryColor,
                    onTap: () {},
                    child: Text(
                      MyStrings.myFavBlog,
                      style: fontTheme.headline4,
                    ),
                  ),
                ),
                techBlogDivider(size: size),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: MyColors.primaryColor,
                    onTap: () {},
                    child: Text(
                      MyStrings.myFavPodCasts,
                      style: fontTheme.headline4,
                    ),
                  ),
                ),
                techBlogDivider(size: size),
                InkWell(
                  splashColor: MyColors.primaryColor,
                  onTap: () {},
                  child: Text(
                    MyStrings.logOut,
                    style: fontTheme.headline4,
                  ),
                ),
              ],
            ),
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
