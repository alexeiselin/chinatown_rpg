import 'package:flutter/material.dart';

class PickCharacter extends StatefulWidget {
  const PickCharacter({Key? key}) : super(key: key);

  @override
  State<PickCharacter> createState() => _PickCharacterState();
}

class _PickCharacterState extends State<PickCharacter> {
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
          // width: active ? 140 : 70,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pick your character'),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: heightForImage,
            width: MediaQuery.of(context).size.width > 400
                ? (555 / 222) * heightForImage
                : double.infinity,
            child: PageView.builder(
              // physics: ScrollPhysics(),
              itemCount: images.length,
              pageSnapping: true,
              controller: PageController(viewportFraction: 0.32),
              onPageChanged: (page) {
                setState(
                  () {
                    activePage = page;
                  },
                );
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              },
            ),
          ),
        ),
      ),
    );
  }
}
