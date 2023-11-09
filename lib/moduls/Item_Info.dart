import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.enName,
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(
                item.jpName,
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.setSourceAsset(item.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
