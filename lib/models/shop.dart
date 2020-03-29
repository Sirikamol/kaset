import 'products.dart';

class Shop {
  String name;
  String description;
  String type;
  String zone;
  String category;
  List<Product> products;
  List<dynamic> imageUrls;
  String boothNumber;
  String objectID;

  Shop(
      {this.name,
      this.description,
      this.type,
      this.zone,
      this.category,
      this.products,
      this.imageUrls,
      this.boothNumber,
      this.objectID});

  factory Shop.fromJSON(Map<String, dynamic> json) {
    return Shop(
        name: json['name'],
        description: json['description'],
        type: json['type'],
        zone: json['zone'],
        category: json['category'],
        products: json['products'],
        imageUrls: json['images'],
        boothNumber: json['boothNumber'],
        objectID: json['objectID']);
  }
}
