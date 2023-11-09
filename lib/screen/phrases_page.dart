import 'package:flutter/material.dart';


import '../moduls/Phrases_item.dart';
import '../moduls/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({
    super.key,
  });

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: "sounds/phrases/are_you_coming.wav",
      jpName: 'Kimasu ka',
      enName: 'Are You Coming',
    ),
    ItemModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jpName: 'Wasurezu ni kōdoku shite kudasai',
      enName: 'Dont Forget Subscribe ',
    ),
    ItemModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How Are You Feeling ',
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_anime.wav",
      jpName: 'I love Anime ',
      enName: 'Watashi wa anime ga daisukidesu',
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_programming.wav",
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'I love Programing ',
    ),
    ItemModel(
      sound: "sounds/phrases/programming_is_easy.wav",
      jpName: ' Puroguramingu wa kantan',
      enName: 'Programing Is Easy',
    ),
    ItemModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      jpName: ' Anata no namae wa nandesuka',
      enName: 'Where Are You Going ',
    ),
    ItemModel(
      sound: "sounds/colors/yellow.wav",
      jpName: 'Kiiro',
      enName: 'ewfffffffs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "phrases ",
          style: TextStyle(),
        ),
        backgroundColor: Colors.black45,
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item:phrasesList[index],
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
