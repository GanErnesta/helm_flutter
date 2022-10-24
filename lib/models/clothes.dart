class Clothes {
  String title;
  String subtitle;
  String price;
  String imageURL;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes(
          'Helmet Shark Full Face',
          'Helm',
          '\$79.99',
          'assets/images/shark.png',
          ['assets/images/shark.png', 'assets/images/detail3.png']),
      Clothes(
          'Locatelli Helmet Full Face',
          'Sports Helm',
          '\$39.99',
          'assets/images/locatelli.png',
          ['assets/images/locatelli.png', 'assets/images/detail3.png']),
      Clothes(
          'XR2 Nexx Full Face',
          'Helm',
          '\$39.99',
          'assets/images/xr2.png',
          ['assets/images/xr2.png', 'assets/images/detail3.png']),
    ];
  }
}
