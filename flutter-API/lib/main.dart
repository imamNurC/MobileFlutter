import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});  

  final ProductController productController = ProductController();
  // final productController = Provider.of<ProductController>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: productController.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: productController.products.length,
              itemBuilder: (context, index) {
                Product product = productController.products[index];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID: ${product.id}'),
                      Text('Category: ${product.category}'),
                      Text('Price: \$${product.price.toString()}'),
                      Text('Rating: ${product.rating.toString()}'),
                      Text('Stock: ${product.stock.toString()}'),
                      Text('Images: ${product.images.join(', ')}'),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
