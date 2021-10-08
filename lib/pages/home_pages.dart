//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thanyark_v01/utils/consatnts.dart';
import 'package:thanyark_v01/utils/widget_Functions.dart';
import 'package:thanyark_v01/widget/news_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                color: COLOR_BU,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              SvgPicture.asset('assets/images/new 1.svg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0XFF71BBFC),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                    ),
                  ),
                  addHorizontalSpace(20),
                  Expanded(
                      child: Text(
                    'สวัดดีครับ',
                    style: textTheme.headline5!.apply(color: Colors.white),
                  ))
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    decoration: BoxDecoration(
                      color: Color(0xffff6f5fb),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.87,
                    child: Column(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            //margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 160,
                            width: 366,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xff0088c6),
                                  const Color(0xff43cef8)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            Text(
                              'การนัดหมาย',
                              style: textTheme.headline6!
                                  .apply(color: Colors.blue),
                            ),
                            // Expanded(child: Center()),
                            // Text('data'),
                            //addHorizontalSpace(3)
                          ],
                        ),
                        Positioned(
                          child: Container(
                            //margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 160,
                            width: 366,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xff0088c6),
                                  const Color(0xff43cef8)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset('assets/icons/icon_doc1.svg'),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/icon_cal1.svg'),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/icon_noti.svg'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('ขอผลตรวจ',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('เพิ่มการนัดหมาย',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('การแจ้งเตือน',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: -350,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(
                            MediaQuery.of(context).size.width * 2, 100)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.73,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20.0, top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'บทความ',
                                  style: textTheme.headline6!
                                      .apply(color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NewsList(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20.0, top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'โปรโมชั่นร้านค้า',
                                  style: textTheme.headline6!
                                      .apply(color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        //top: -constraints.maxWidth * 0.15,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: 160,
                              width: 366,
                              child: Image.asset(
                                'assets/images/t1.jpg',
                                //fit: BoxFit.fill,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.blue.shade300),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20.0, top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'มูลนิธิถันยรักษ์',
                                  style: textTheme.headline6!
                                      .apply(color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
