class News {
  String title;
  String subtile;
  String imageUrl;

  List<String> detaiUrl;
  News(this.title, this.subtile, this.imageUrl, this.detaiUrl);
  static List<News> generateNews() {
    return [
      News('ทดสอบ', 'test', 'assets/images/t1.jpg',
          ['assets/images/t1.jpg', 'assets/images/t2.jpg']),
      News('TEST', 'test', 'assets/images/t2.jpg',
          ['assets/images/t3.jpg', 'assets/images/t1.jpg']),
      News('TEST', 'test', 'assets/images/t2.jpg',
          ['assets/images/t1.jpg', 'assets/images/t1.jpg'])
    ];
  }
}
