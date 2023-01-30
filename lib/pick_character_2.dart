import 'package:chinatown_rpg/character_widget.dart';
import 'package:flutter/material.dart';

import 'utilities.dart';

class PickCharacter2 extends StatefulWidget {
  const PickCharacter2({Key? key}) : super(key: key);

  @override
  State<PickCharacter2> createState() => _PickCharacter2State();
}

class _PickCharacter2State extends State<PickCharacter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pick your character'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            CharacterWidget(
              numberOfCharacter: 0,
            ),
            CharacterWidget(
              numberOfCharacter: 1,
            ),
            CharacterWidget(
              numberOfCharacter: 2,
            ),
            CharacterWidget(
              numberOfCharacter: 3,
            ),
            // Expanded(
            //   child: MaterialButton(
            //     splashColor: Colors.transparent,
            //     highlightColor: Colors.transparent,
            //     padding: const EdgeInsets.all(0),
            //     onPressed: () {
            //       setState(() {
            //         selectedCharacter = '2';
            //       });
            //     },
            //     child: Column(
            //       children: [
            //         AnimatedContainer(
            //           height: (selectedCharacter == '2')
            //               ? Utilities.screenAwareSize(140.0, context)
            //               : Utilities.screenAwareSize(80.0, context),
            //           duration: const Duration(milliseconds: 500),
            //           curve: Curves.easeInOutCubic,
            //           margin: EdgeInsets.only(
            //             top: (selectedCharacter == '2')
            //                 ? Utilities.screenAwareSize(0.0, context)
            //                 : Utilities.screenAwareSize(30.0, context),
            //           ),
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage(images[1]),
            //                 fit: BoxFit.fitHeight),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 14,
            //         ),
            //         Align(
            //           alignment: Alignment.bottomCenter,
            //           child: (selectedCharacter == '2')
            //               ? Text(
            //                   characterDescription[1],
            //                   textAlign: TextAlign.center,
            //                 )
            //               : const SizedBox(),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(
            //     child: MaterialButton(
            //   splashColor: Colors.transparent,
            //   highlightColor: Colors.transparent,
            //   padding: const EdgeInsets.all(0),
            //   onPressed: () {
            //     setState(() {
            //       selectedCharacter = '3';
            //     });
            //   },
            //   child: Column(
            //     children: [
            //       AnimatedContainer(
            //         height: (selectedCharacter == '3')
            //             ? Utilities.screenAwareSize(115.0, context)
            //             : Utilities.screenAwareSize(80.0, context),
            //         duration: const Duration(milliseconds: 500),
            //         curve: Curves.easeInOutCubic,
            //         margin: EdgeInsets.only(
            //           top: (selectedCharacter == '3')
            //               ? Utilities.screenAwareSize(0.0, context)
            //               : Utilities.screenAwareSize(30.0, context),
            //         ),
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //               image: AssetImage(images[2]), fit: BoxFit.fitHeight),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 14,
            //       ),
            //       Align(
            //         alignment: Alignment.bottomCenter,
            //         child: (selectedCharacter == '3')
            //             ? Text(
            //                 characterDescription[2],
            //                 textAlign: TextAlign.center,
            //               )
            //             : const SizedBox(),
            //       )
            //     ],
            //   ),
            // )),
            // Expanded(
            //   child: MaterialButton(
            //     splashColor: Colors.transparent,
            //     highlightColor: Colors.transparent,
            //     padding: const EdgeInsets.all(0),
            //     onPressed: () {
            //       setState(() {
            //         selectedCharacter = '4';
            //       });
            //     },
            //     child: Column(
            //       children: [
            //         AnimatedContainer(
            //           height: (selectedCharacter == '4')
            //               ? Utilities.screenAwareSize(120.0, context)
            //               : Utilities.screenAwareSize(80.0, context),
            //           duration: const Duration(milliseconds: 500),
            //           curve: Curves.easeInOutCubic,
            //           margin: EdgeInsets.only(
            //             top: (selectedCharacter == '4')
            //                 ? Utilities.screenAwareSize(0.0, context)
            //                 : Utilities.screenAwareSize(30.0, context),
            //           ),
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage(images[3]),
            //                 fit: BoxFit.fitHeight),
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 14,
            //         ),
            //         Align(
            //           alignment: Alignment.bottomCenter,
            //           child: (selectedCharacter == '4')
            //               ? Text(
            //                   characterDescription[3],
            //                   textAlign: TextAlign.center,
            //                 )
            //               : const SizedBox(),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterWidget extends StatefulWidget {
  CharacterWidget({
    required this.numberOfCharacter,
    super.key,
  });

  int numberOfCharacter;

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  static String selectedCharacter = '0';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        onPressed: () {
          print('Предыдущий персонаж: $selectedCharacter');
          setState(() {
            selectedCharacter = widget.numberOfCharacter.toString();
          });
          print('Текущий персонаж: $selectedCharacter');
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: (selectedCharacter == widget.numberOfCharacter.toString())
                ? Utilities.screenAwareSize(0.0, context)
                : Utilities.screenAwareSize(30.0, context),
          ),
          child: Column(
            children: [
              Text(
                names[widget.numberOfCharacter],
                textScaleFactor:
                    (selectedCharacter == widget.numberOfCharacter.toString())
                        ? 1.0
                        : 0.8,
              ),
              SizedBox(
                height:
                    (selectedCharacter == widget.numberOfCharacter.toString())
                        ? 14
                        : 10,
              ),
              AnimatedContainer(
                height:
                    (selectedCharacter == widget.numberOfCharacter.toString())
                        ? Utilities.screenAwareSize(140.0, context)
                        : Utilities.screenAwareSize(80.0, context),
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOutCubic,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[widget.numberOfCharacter]),
                      fit: BoxFit.fitHeight),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:
                    (selectedCharacter == widget.numberOfCharacter.toString())
                        ? Text(
                            characterDescription[widget.numberOfCharacter],
                            textAlign: TextAlign.center,
                          )
                        : const SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
