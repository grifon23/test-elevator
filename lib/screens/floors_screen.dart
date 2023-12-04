import 'package:flutter/material.dart';

import '../widgets/floor_item.dart';

class FloorsScreen extends StatelessWidget {
  const FloorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    final String houseName = arguments['homeName'];
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  houseName,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            FloorItem(flootName: 'Floor 1'),
            FloorItem(flootName: 'Floor 2'),
            FloorItem(flootName: 'Floor 3'),
            FloorItem(flootName: 'Floor 4'),
            FloorItem(flootName: 'Floor 5'),
            FloorItem(flootName: 'Floor 6'),
          ]),
        ),
      )),
    );
  }
}
