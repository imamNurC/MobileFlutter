import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ini Home Screen',
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
