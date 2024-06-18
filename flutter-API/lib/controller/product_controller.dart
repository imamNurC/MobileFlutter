import 'dart:convert';
import 'package:flutter_api/model/product_model.dart';
import 'package:sky_engine/_http/http.dart' as http;
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var isLoading = false.obs;
  final String url = 'https://dummyjson.com/';
  List<Product> products = <Product>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getProducts();
  }

  Future<void> getProducts() async {
    try {
      isLoading(true);
      final response =
          await http.get(Uri.parse('$url/products?skip=0&limit=10'));

      if (response.statusCode == 200) {
        // Successful request
        List<dynamic> data = jsonDecode(response.body);
        products.assignAll(data.map((json) => Product.fromMap(json)).toList());
      } else {
        // Error in request
        print('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      // Exception thrown
      print('Exception while loading products: $e');
    } finally {
      isLoading(false);
    }
  }

  // You can add more methods and logic related to managing products here
}
