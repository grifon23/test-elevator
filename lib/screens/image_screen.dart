import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Column(
              children: [
                const Text(
                  'Test Task',
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 47),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      border:
                          Border.all(width: 1, color: const Color(0xFFF71111))),
                  child: const Center(
                      child: Text('any image here',
                          style: TextStyle(fontSize: 24.0))),
                ),
                const SizedBox(height: 31),
                InkWell(
                  child: Container(
                    width: 228,
                    height: 57,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: const Center(
                      child: Text(
                        'Enter',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/house');
                  },
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
