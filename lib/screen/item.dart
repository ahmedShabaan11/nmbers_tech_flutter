import 'package:flutter/material.dart';
import 'package:nmbers_tech/moduls/number.dart';

import '../moduls/Item_Info.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.item,
    required this.color,
  });

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              item.image!,
            ),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
