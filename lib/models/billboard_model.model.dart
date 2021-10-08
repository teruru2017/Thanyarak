class Bill {
  List<String> billUrl;
  Bill(this.billUrl);
  static List<Bill> generateNews() {
    return [
      Bill(['assets/images/t1.jpg', 'assets/images/t2.jpg'])
    ];
  }
}
