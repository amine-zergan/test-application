// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Category {
  final String title;
  final String image;
  final String color;
  Category({
    required this.title,
    required this.image,
    required this.color,
  });
}

// ignore: unused_element
List<Category> _data = [
  Category(
      title: "viande et poisson",
      image: "assets/viande-volaille-poisson.png",
      color: "0xFFFFC9B7"),
  Category(
      title: "Huile de Cuisson",
      image: "assets/huile-de-cuisson.png",
      color: "0xFFCBDC6B")
];

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Categories",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}
