class Generals {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  List<dynamic> image;
  String idStore;

  Generals(
      {this.nameStore,
      this.zone,
      this.category,
      this.products,
      this.image,
      this.idStore});

  factory Generals.fromJSON(Map<String, dynamic> json) {
    return Generals(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
      idStore: json['idStore'],
    );
  }
}
