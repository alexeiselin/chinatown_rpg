import 'package:flutter/material.dart';

List<String> images = [
  'images/character_icons/image 404.png',
  'images/character_icons/image 2054.png',
  'images/character_icons/image 2095.png',
  'images/character_icons/image 200.png'
];

List<String> texts = [
  'Google employee.\nLoves dumplings and work burn outs.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'
];

int activePage = 0;

double heightForImage = 240;

Column slider(images, pagePosition, active) {
  double margin = active ? 0 : 50;
  return Column(
    children: [
      AnimatedContainer(
        height: active ? 140 : 70,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
        margin: EdgeInsets.only(top: margin),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(images[pagePosition]), fit: BoxFit.fitHeight),
        ),
      ),
      const SizedBox(
        height: 14,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: active
            ? Text(
                texts[pagePosition],
                textAlign: TextAlign.center,
              )
            : const SizedBox(),
      )
    ],
  );
}

// class CharacterCard extends StatefulWidget {
//   const CharacterCard({Key? key}) : super(key: key);
//
//   @override
//   State<CharacterCard> createState() => _CharacterCardState();
// }
//
// class _CharacterCardState extends State<CharacterCard> {
//   int _value = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [],
//     );
//   }
// }
