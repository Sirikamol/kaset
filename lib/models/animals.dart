class Animals {
  String nameStore;
  String zone;
  String category;
  List<dynamic> products;
  List<dynamic> image;
  String idStore;
  String objectID;

  Animals(
      {this.nameStore,
      this.zone,
      this.category,
      this.products,
      this.image,
      this.idStore,
      this.objectID});

  factory Animals.fromJSON(Map<String, dynamic> json) {
    return Animals(
        nameStore: json['nameStore'],
        zone: json['zone'],
        category: json['category'],
        products: json['products'],
        image: json['image'],
        idStore: json['idStore'],
        objectID: json['objectID']);
  }
}