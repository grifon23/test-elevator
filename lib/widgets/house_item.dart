import 'package:flutter/material.dart';

class HouseItem extends StatelessWidget {
  final String nameHouse;
  const HouseItem({super.key, required this.nameHouse});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/floors',
            arguments: {'homeName': nameHouse});
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        width: 228,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Row(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'House',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Expanded(
                child: Center(
              child: Text(nameHouse),
            ))
          ],
        ),
      ),
    );
  }
}
