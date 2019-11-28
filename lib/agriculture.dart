class Agriculture {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  List<dynamic> image;
  String idStore;

  Agriculture(
      {this.nameStore,
      this.zone,
      this.category,
      this.products,
      this.image,
      this.idStore});

  factory Agriculture.fromJSON(Map<String, dynamic> json) {
    return Agriculture(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
      idStore: json['idStore'],
    );
  }
}
