import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Module/fake_data.dart';
import '../my_colors.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
    Key? key,
    required this.size,
    required this.fontTheme,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;
  final TextTheme fontTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          homePagePoster(size: size, fontTheme: fontTheme),
          SizedBox(
            height: size.height / 14.54,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tagList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, index == 0 ? bodyMargin : 15, 0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: MyGradiantColor.hashTagGradientColor,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft),
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.tag_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          tagList[index].title,
                          style: fontTheme.subtitle1,
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: size.height / 16,
          ),
          seeMoreBlogs(bodyMargin: bodyMargin, fontTheme: fontTheme),
          const SizedBox(
            height: 15,
          ),
          homeBlogList(
              size: size, bodyMargin: bodyMargin, fontTheme: fontTheme),
          seeMorePodCasts(bodyMargin: bodyMargin, fontTheme: fontTheme),
          homePodCastsList(
              size: size, bodyMargin: bodyMargin, fontTheme: fontTheme),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class homePodCastsList extends StatelessWidget {
  const homePodCastsList({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.fontTheme,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: podCastList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0, 12, index == 0 ? bodyMargin : 15, 0),
                child: Container(
                  height: size.height / 5.57,
                  width: size.width / 2.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(podCastList[index].imageUrl!),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 26, 0),
                child: Text(
                  podCastList[index].title!,
                  style: fontTheme.headline4,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class seeMorePodCasts extends StatelessWidget {
  const seeMorePodCasts({
    Key? key,
    required this.bodyMargin,
    required this.fontTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, bodyMargin, 0),
      child: Row(
        children: [
          const Icon(
            Icons.mic,
            color: Color.fromARGB(255, 40, 107, 184),
          ),
          Text(
            'مشاهده ی داغ ترین پادکست ها',
            style: fontTheme.subtitle2,
          )
        ],
      ),
    );
  }
}

class homeBlogList extends StatelessWidget {
  const homeBlogList({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.fontTheme,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        itemCount: blogList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0, 0, index == 0 ? bodyMargin : 15, 0),
                child: Stack(
                  children: [
                    Container(
                      width: size.width / 2.8,
                      height: size.height / 5.57,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                NetworkImage(blogList[index].posterImageUrl!),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: MyGradiantColor.blogPosterGradientColor,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(blogList[index].writerName!,
                              style: fontTheme.subtitle1),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            blogList[index].view!,
                            style: fontTheme.subtitle1,
                          ),
                          const Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(0, 6, index == 0 ? bodyMargin : 15, 0),
                child: SizedBox(
                  width: size.width / 2.87,
                  child: Text(
                    blogList[index].title!,
                    style: fontTheme.headline3,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class seeMoreBlogs extends StatelessWidget {
  const seeMoreBlogs({
    Key? key,
    required this.bodyMargin,
    required this.fontTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, bodyMargin, 0),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.pen,
            color: Color.fromARGB(255, 40, 107, 184),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'مشاهده ی داغ ترین نوشته ها',
            style: fontTheme.subtitle2,
          )
        ],
      ),
    );
  }
}

class homePagePoster extends StatelessWidget {
  const homePagePoster({
    Key? key,
    required this.size,
    required this.fontTheme,
  }) : super(key: key);

  final Size size;
  final TextTheme fontTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //--------------------------------------------------------------
        //homePoster Container
        Container(
          width: size.width / 1.19,
          height: size.height / 4.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(homePagePosterMap['imageAsset']),
                  fit: BoxFit.cover)),
          foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  colors: MyGradiantColor.homePosterGradientColor,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        //----------------------------------------------------------------
        //homePoster Text
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    homePagePosterMap['writerName'] +
                        "  -  " +
                        homePagePosterMap['date'],
                    style: fontTheme.subtitle1,
                  ),
                  Row(children: [
                    Text(
                      homePagePosterMap['articleView'],
                      style: fontTheme.subtitle1,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                      size: 15,
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "دوازده قدم برنامه نویسی یک دوره ی ....",
                style: fontTheme.headline1,
              )
            ],
          ),
        )
      ],
    );
  }
}
