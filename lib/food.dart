class Food {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  List<dynamic> image;
  String idStore;
  String objectID;

  Food({this.nameStore, this.zone, this.category, this.products, this.image, this.idStore, this.objectID});

  factory Food.fromJSON(Map<String, dynamic> json) {
    return Food(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
      idStore: json['idStore'],
      objectID: json['objectID']
    );
  }
}
