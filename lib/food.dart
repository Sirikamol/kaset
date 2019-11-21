class Food {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  List<dynamic> image;
  String idStore;  //*

  Food({this.nameStore, this.zone, this.category, this.products, this.image, this.idStore});

  factory Food.fromJSON(Map<String, dynamic> json) {
    return Food(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
      idStore: json['idStore'],
    );
  }
}
