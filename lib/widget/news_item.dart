import 'package:flutter/material.dart';
import 'package:thanyark_v01/models/news_model.dart';
import 'package:thanyark_v01/widget/detail_news.dart';

class NewsItem extends StatelessWidget {
//  final double width;
//    final dynamic newsData;
//  const NewsItem({Key? key, required this.width, required this.newsData})
//       : super(key: key);

  final News news;
  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailNewsPage(news)));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 210,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(news.imageUrl),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ],
              ),
              Text(
                news.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, color: Colors.blue),
              ),
              Text(news.subtile)
            ],
          ),
        ),
      ),
    );
  }
}
