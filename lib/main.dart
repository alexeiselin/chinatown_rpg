import 'package:chinatown_rpg/pick_character.dart';
import 'package:chinatown_rpg/pick_character_2.dart';
import 'package:flutter/material.dart';
import 'start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const PickCharacter2(),
    );
  }
}
