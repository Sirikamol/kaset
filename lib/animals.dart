class Animals {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  String image;
  String idStore;  //* 

  Animals(
      {this.nameStore, this.zone, this.category, this.products, this.image, this.idStore});
  factory Animals.fromJSON(Map<String, dynamic> json) {
    return Animals(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
      idStore: json['idStore'],
    );
  }
}
