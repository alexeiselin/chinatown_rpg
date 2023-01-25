import 'package:flutter/material.dart';


List<AssetImage> optionsList =  [
const AssetImage('images/character_icons/image 200.png'),
  const AssetImage('images/character_icons/image 404.png'),
  const AssetImage('images/character_icons/image 2054.png'),
  const AssetImage('images/character_icons/image 2095.png'),

];


class CharacterCard extends StatefulWidget {
  const CharacterCard({Key? key}) : super(key: key);

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}