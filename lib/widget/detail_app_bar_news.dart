import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:thanyark_v01/models/news_model.dart';

class DetailAppBarNews extends StatefulWidget {
  final News news;
  DetailAppBarNews(this.news);

  @override
  _DetailAppBarNewsState createState() => _DetailAppBarNewsState();
}

class _DetailAppBarNewsState extends State<DetailAppBarNews> {
  final CarouselController _controller = CarouselController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    height: 255,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    }),
                items: widget.news.detaiUrl
                    .map((e) => Builder(
                          builder: (context) => Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('$e'),
                                    fit: BoxFit.fitHeight),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ))
                    .toList()),
          ),
          Positioned(
            bottom: 10,
            left: 180,
            child: Row(
              children: widget.news.detaiUrl
                  .asMap()
                  .entries
                  .map((entry) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(
                                _currentPage == entry.key ? 0.9 : 0.4)),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
