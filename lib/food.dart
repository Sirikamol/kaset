class Food {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  String image;

  Food({this.nameStore, this.zone, this.category, this.products, this.image});

  factory Food.fromJSON(Map<String, dynamic> json) {
    return Food(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
    );
  }
}
