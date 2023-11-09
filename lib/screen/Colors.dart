import 'package:flutter/material.dart';

import '../moduls/number.dart';
import 'item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: "sounds/colors/black.wav",
      jpName: 'Kuro',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: "sounds/colors/brown.wav",
      jpName: 'Chairo',
      enName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: "sounds/colors/dusty yellow.wav",
      jpName: 'Kiiro',
      enName: 'Dusty Yelllow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: "sounds/colors/gray.wav",
      jpName: 'Gurē',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: "sounds/colors/green.wav",
      jpName: 'Green',
      enName: 'Midori',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: "sounds/colors/red.wav",
      jpName: 'Aka',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      sound: "sounds/colors/white.wav",
      jpName: 'Shiro',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      sound: "sounds/colors/yellow.wav",
      jpName: 'Kiiro',
      enName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors ",
          style: TextStyle(),
        ),
        backgroundColor: Colors.black45,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            item: numbers[index],
            color: Colors.purple,
          );
        },
      ),
    );
  }
}
