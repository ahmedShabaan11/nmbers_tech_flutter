import 'package:flutter/material.dart';
import 'package:nmbers_tech/screen/Colors.dart';
import 'package:nmbers_tech/screen/NumberPage.dart';
import 'package:nmbers_tech/screen/category.dart';
import 'package:nmbers_tech/screen/familynumbers.dart';
import 'package:nmbers_tech/screen/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tkuo"),
        backgroundColor: Color(0xff181424),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return NumberPage();
                }),
              );
            },
            text: "Numbers",
            color: Colors.orange,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FamilyMember();
                  }),
                );
              },
              child: Category(text: "FamilyMembers", color: Colors.green)),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorPage();
                  },
                ));
              },
              child: Category(text: "Colors", color: Colors.purple)),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const PhrasesPage();
                }));
              },
              child: Category(text: "Phrases", color: Colors.blueAccent)),
        ],
      ),
    );
  }
}
