import 'package:flutter/material.dart';
import '../../modal/product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text(product.title)
            ],
          ),
        ),
      ),
    );
  }
}
