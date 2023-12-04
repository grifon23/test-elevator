import 'package:flutter/material.dart';

import '../widgets/add_house.dart';
import '../widgets/house_item.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          const SizedBox(
            height: 56.0,
          ),
          AddHouse(
            onTap: () {
              print('press add house');
            },
          ),
          HouseItem(
            nameHouse: 'House 1',
          ),
          HouseItem(
            nameHouse: 'House 2',
          ),
          HouseItem(
            nameHouse: 'House 3',
          ),
          HouseItem(
            nameHouse: 'House 4',
          ),
          const SizedBox(
            height: 56.0,
          ),
        ]),
      )),
    );
  }
}
