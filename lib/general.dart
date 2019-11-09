class Generals {
  String nameStore;
  String zone;
  String category;
  List<String> products;
  String image;

  Generals({this.nameStore, this.zone, this.category, this.products, this.image});

  factory Generals.fromJSON(Map<String, dynamic> json) {
    return Generals(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
    );
  }

}



