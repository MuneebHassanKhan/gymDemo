import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:trainingprojectgetx/colors/colors.dart' as colors;
import 'package:trainingprojectgetx/controller/json%20controller/homecontroller.dart';
import 'package:trainingprojectgetx/screens/video%20screen/video.dart';

//main Home View
homeView(BuildContext context) {
  return Scaffold(
    backgroundColor: colors.AppColor.homePageBackground,
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 40, right: 15, left: 15),
        child: Column(
          children: <Widget>[
            firstRow(),
            SizedBox(
              height: 30,
            ),
            secondRow(),
            SizedBox(
              height: 20,
            ),
            thirdRow(),
            SizedBox(
              height: 5,
            ),
            forthRow(context),
            SizedBox(
              height: 5,
            ),
            fifthRow(),
            gridview(context),
          ],
        ),
      ),
    ),
  );
}

//first Row
firstRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Training",
        style: TextStyle(
          fontSize: 30,
          color: colors.AppColor.homePageTitle,
          fontWeight: FontWeight.w700,
        ),
      ),
      Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: colors.AppColor.homePageIcons,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.calendar_today,
            size: 20,
            color: colors.AppColor.homePageIcons,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
            color: colors.AppColor.homePageIcons,
          ),
        ],
      )
    ],
  );
}

//second Row
secondRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Your Program",
        style: TextStyle(
          fontSize: 20,
          color: colors.AppColor.homePageSubtitle,
          fontWeight: FontWeight.w700,
        ),
      ),
      Row(
        children: <Widget>[
          Text(
            "Details",
            style: TextStyle(
              fontSize: 20,
              color: colors.AppColor.homePageDetail,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              Get.to(() => VideoPage());
            },
            child: Icon(
              Icons.arrow_forward,
              size: 20,
              color: colors.AppColor.homePageIcons,
            ),
          ),
        ],
      ),
    ],
  );
}

//third row
thirdRow() {
  return Container(
    width: 350,
    height: 200,
    decoration: BoxDecoration(
        gradient: colorMethod(),
        borderRadius: radiusMethod(),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 10),
            blurRadius: 20,
            color: colors.AppColor.gradientSecond.withOpacity(.2),
          ),
        ]),
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Next Workout",
            style: TextStyle(
              color: colors.AppColor.homePageContainerTextSmall,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Legs Toning",
            style: TextStyle(
              color: colors.AppColor.homePageContainerTextSmall,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "and Glutes Workout",
            style: TextStyle(
              color: colors.AppColor.homePageContainerTextSmall,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    size: 20,
                    color: colors.AppColor.homePageContainerTextSmall,
                  ),
                  Text(
                    "60 min",
                    style: TextStyle(
                        fontSize: 14,
                        color: colors.AppColor.homePageContainerTextSmall),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 6),
                      blurRadius: 10,
                      color: colors.AppColor.gradientFirst,
                    ),
                  ],
                ),
                child: Icon(Icons.play_circle,
                    size: 60,
                    color: colors.AppColor.homePageContainerTextSmall),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

//radius of 3rd
BorderRadius radiusMethod() {
  return BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    topRight: Radius.circular(80),
    bottomRight: Radius.circular(10),
  );
}

//colors of 3rd
LinearGradient colorMethod() {
  return LinearGradient(colors: [
    colors.AppColor.gradientFirst.withOpacity(0.8),
    colors.AppColor.gradientSecond.withOpacity(0.9),
  ], begin: Alignment.bottomLeft, end: Alignment.centerRight);
}

//forthRow
forthRow(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 180,
    child: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("images/card.png"),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  offset: Offset(8, 10),
                  color: colors.AppColor.gradientSecond.withOpacity(.25),
                ),
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(-1, -5),
                  color: colors.AppColor.gradientSecond.withOpacity(.25),
                ),
              ]),
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(right: 200, bottom: 30),
          decoration: BoxDecoration(
            // color: Colors.red.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/figure.png"),
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 100,
          margin: EdgeInsets.only(top: 50, left: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "You are doing great\n",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colors.AppColor.homePageDetail,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: "Keep it up\n",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: colors.AppColor.homePagePlanColor,
                    ),
                    children: [
                      TextSpan(text: "Stick to your plan"),
                    ]),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//area of focus
fifthRow() {
  return Row(
    children: [
      Text(
        "Area of focus",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: colors.AppColor.homePageTitle,
        ),
      ),
    ],
  );
}

gridview(BuildContext context) {
  return Expanded(
    child: OverflowBox(
      maxWidth: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: (info.length.toDouble() / 2).toInt(),
        itemBuilder: (_, i) {
          int a = 2 * i;
          int b = 2 * i + 1;
          return Row(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 90) / 2,
                margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                height: 170,
                padding: EdgeInsets.only(bottom: 5),
                child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      info[a]["title"],
                      style: TextStyle(
                        fontSize: 20,
                        color: colors.AppColor.homePageDetail,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(info[a]["img"]),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(5, 5),
                      color: colors.AppColor.gradientSecond.withOpacity(0.1),
                    ),
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(-5, -5),
                      color: colors.AppColor.gradientSecond.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 90) / 2,
                margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                height: 170,
                padding: EdgeInsets.only(bottom: 5),
                child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      info[b]["title"],
                      style: TextStyle(
                        fontSize: 20,
                        color: colors.AppColor.homePageDetail,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(info[b]["img"]),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(5, 5),
                      color: colors.AppColor.gradientSecond.withOpacity(0.1),
                    ),
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(-5, -5),
                      color: colors.AppColor.gradientSecond.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}
