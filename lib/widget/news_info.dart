import 'package:flutter/material.dart';
import 'package:thanyark_v01/models/news_model.dart';

class NewsInfo extends StatelessWidget {
  final News news;
  NewsInfo(this.news);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${news.title} ${news.subtile}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}
