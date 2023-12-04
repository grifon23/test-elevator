import 'package:flutter/material.dart';

class AddHouse extends StatelessWidget {
  const AddHouse({super.key, required this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        width: 228,
        height: 40,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: const Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Add house',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Positioned(
              right: 22,
              top: 0,
              bottom: 0,
              child: Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
