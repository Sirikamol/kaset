class Agriculture {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  String image;

  Agriculture(
      {this.nameStore, this.zone, this.category, this.products, this.image});
      factory Agriculture.fromJSON(Map<String, dynamic> json) {
    return Agriculture(
      nameStore: json['nameStore'],
      zone: json['zone'],
      category: json['category'],
      products: json['products'],
      image: json['image'],
    );
  }
}

