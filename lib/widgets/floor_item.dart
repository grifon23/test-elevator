import 'package:flutter/material.dart';

class FloorItem extends StatelessWidget {
  final String flootName;
  const FloorItem({super.key, required this.flootName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 40.0,
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Center(
          child: Text(
        flootName,
        style: TextStyle(fontSize: 16.0),
      )),
    );
  }
}
