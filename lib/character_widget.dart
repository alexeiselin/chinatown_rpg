import 'package:flutter/material.dart';

List<String> images = [
  'images/character_icons/image 404.png',
  'images/character_icons/image 2054.png',
  'images/character_icons/image 2095.png',
  'images/character_icons/image 200.png'
];

List<String> characterDescription = [
  'Google employee.\nLoves dumplings and work burn outs.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'
];
List<String> names = ['Greg', 'Jannet', 'Kim', 'No name'];

int activePage = 0;

double heightForImage = 240;

Column slider(images, pagePosition, active) {
  double margin = active ? 0 : 25;
  return Column(
    children: [
      Text(names[pagePosition]),
      AnimatedContainer(
        height: active ? 100 : 50,
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
                characterDescription[pagePosition],
                textAlign: TextAlign.center,
              )
            : const SizedBox(),
      )
    ],
  );
}
