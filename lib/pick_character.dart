import 'package:chinatown_rpg/character_widget.dart';
import 'package:flutter/material.dart';



class PickCharacter extends StatefulWidget {
  const PickCharacter({Key? key}) : super(key: key);

  @override
  State<PickCharacter> createState() => _PickCharacterState();
}

class _PickCharacterState extends State<PickCharacter> {
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
               padEnds: true, // for start from the beginning of the screen
              physics: const BouncingScrollPhysics(),
              itemCount: images.length,
              pageSnapping: true,
              controller: PageController(viewportFraction: 0.2),
              onPageChanged: (page) {
                setState(
                  () {
                    activePage = page;
                  },
                );
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider( images, pagePosition, active);
              },
            ),
          ),
        ),
      ),
    );
  }
}
