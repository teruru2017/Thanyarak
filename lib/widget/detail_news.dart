import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thanyark_v01/models/news_model.dart';
import 'package:thanyark_v01/utils/consatnts.dart';
import 'package:thanyark_v01/widget/detail_app_bar_news.dart';
import 'package:thanyark_v01/widget/news_info.dart';

class DetailNewsPage extends StatelessWidget {
  // const DetailNewsPage({Key? key}) : super(key: key);
  final News news;
  DetailNewsPage(this.news);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 156,
                  width: 414,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60)),
                          color: COLOR_BU,
                        ),
                      ),
                      SvgPicture.asset('assets/images/b_h1.svg'),
                    ],
                  ),
                ),
                Positioned(
                    top: -constraints.maxWidth * 0.15,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [DetailAppBarNews(news), NewsInfo(news)],
                    ))

                // SingleChildScrollView(
                //   top: -constraints.maxWidth * 0.15,
                //             left: 0,
                //             right: 0,
                //     child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [DetailAppBarNews(news), NewsInfo(news)],
                // )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
