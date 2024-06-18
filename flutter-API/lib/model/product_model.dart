class Product {
  int id;
  String title;
  String category;
  int price;
  double rating;
  int stock;
  List<dynamic> images;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
    required this.stock,
    required this.images,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      category: map['category'],
      price: map['price'],
      rating: map['rating']
          .toDouble(), // Assuming 'rating' is stored as double in the map
      stock: map['stock'],
      images: map['images'] != null ? List<dynamic>.from(map['images']) : [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'price': price,
      'rating': rating,
      'stock': stock,
      'images': images,
    };
  }
}
