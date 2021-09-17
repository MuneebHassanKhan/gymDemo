import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:trainingprojectgetx/colors/colors.dart' as colors;
import 'package:trainingprojectgetx/controller/json%20controller/homecontroller.dart';

class VideoView extends StatefulWidget {
  const VideoView({Key? key}) : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  var _playarea;
  @override
  Widget build(BuildContext context) {
    return videoView(context);
  }

  videoView(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _playarea == false
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colors.AppColor.gradientFirst.withOpacity(0.9),
                    colors.AppColor.gradientSecond,
                  ],
                ),
              )
            : BoxDecoration(color: colors.AppColor.gradientSecond),
        child: Column(
          children: <Widget>[
            _playarea == false
                ? Container(
                    padding: EdgeInsets.only(
                      top: 70,
                      left: 20,
                      right: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Legs Toning",
                          style: TextStyle(
                            color: colors.AppColor.secondPageTitleColor,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "and Glutes Workout",
                          style: TextStyle(
                            color: colors.AppColor.secondPageTitleColor,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    colors.AppColor
                                        .secondPageContainerGradient1stColor,
                                    colors.AppColor
                                        .secondPageContainerGradient2ndColor,
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    "68min",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: colors
                                            .AppColor.secondPageIconColor),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                width: 250,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      colors.AppColor
                                          .secondPageContainerGradient1stColor,
                                      colors.AppColor
                                          .secondPageContainerGradient2ndColor,
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      Icons.handyman,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      "Ressitent band, Kettlebell",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: colors
                                              .AppColor.secondPageIconColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: 300,
                    height: 300,
                    color: Colors.redAccent,
                  ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Circuit 1: Legs Toning",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: colors.AppColor.circuitsColor,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: <Widget>[
                            Icon(Icons.loop,
                                size: 30, color: colors.AppColor.loopColor),
                            Text(
                              "3 sets",
                              style: TextStyle(
                                fontSize: 15,
                                color: colors.AppColor.setsColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: listView(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      itemCount: videoinfo.length,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap: () {
            debugPrint(
              index.toString(),
            );
            setState(() {
              if (_playarea == false) {
                _playarea = true;
              }
            });
          },
          child: cardView(index),
        );
      },
    );
  }

  Container cardView(int index) {
    return Container(
      height: 135,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      videoinfo[index]["thumbnail"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      videoinfo[index]["title"],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        videoinfo[index]["time"],
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: <Widget>[
            Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xFFeaeefc),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "15s rest",
                  style: TextStyle(
                    color: Color(0xFF839fed),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                for (int i = 0; i < 70; i++)
                  i.isEven
                      ? Container(
                          height: 1,
                          width: 3,
                          decoration: BoxDecoration(
                            color: Color(0xFF839fed),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        )
                      : Container(
                          width: 3,
                          height: 1,
                          color: Colors.white,
                        ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
