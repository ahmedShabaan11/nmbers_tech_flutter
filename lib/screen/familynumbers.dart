import 'package:flutter/material.dart';

import '../moduls/number.dart';
import 'item.dart';

class FamilyMember extends StatelessWidget {
  FamilyMember({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: "sounds/family_members/father.wav",
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: "sounds/family_members/mother.wav",
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: "sounds/family_members/grand father.wav",
      jpName: 'Sofu',
      enName: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: "sounds/family_members/grand mother.wav",
      jpName: 'Sobo',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: "sounds/family_members/daughter.wav",
      jpName: 'Musume',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: "sounds/family_members/older bother.wav",
      jpName: 'Ani',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: "sounds/family_members/older sister.wav",
      jpName: 'Ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: "sounds/family_members/younger sister.wav",
      jpName: 'Imōto',
      enName: 'YoungerSister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
    ItemModel(
      sound: "sounds/family_members/son.wav",
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: "sounds/family_members/younger brohter.wav",
      jpName: 'Otōto',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Members ",
          style: TextStyle(),
        ),
        backgroundColor: Colors.black45,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Colors.green,
            item: numbers[index],
          );
        },
      ),
    );
  }
}
