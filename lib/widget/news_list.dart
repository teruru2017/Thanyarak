import 'package:flutter/material.dart';
import 'package:thanyark_v01/models/news_model.dart';
import 'package:thanyark_v01/widget/news_item.dart';

class NewsList extends StatelessWidget {
  final newsList = News.generateNews();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 280,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => NewsItem(newsList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: newsList.length),
          )
        ],
      ),
    );
  }
}
