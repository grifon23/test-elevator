import 'package:elevator_app/screens/house_screen.dart';
import 'package:flutter/material.dart';

import 'screens/floors_screen.dart';
import 'screens/image_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Inter',
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black),
              bodyMedium: TextStyle(color: Colors.black),
              bodySmall: TextStyle(color: Colors.black))),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ImageScreen(),
        '/house': (context) => const HouseScreen(),
        '/floors': (context) => const FloorsScreen()
      },
    );
  }
}
