import 'package:chinatown_rpg/character_widget.dart';
import 'package:flutter/material.dart';

class PickCharacter2 extends StatefulWidget {
  const PickCharacter2({Key? key}) : super(key: key);

  @override
  State<PickCharacter2> createState() => _PickCharacter2State();
}

class _PickCharacter2State extends State<PickCharacter2> {
  String selectedCharacter = '1';

  static const double baseWidth = 480.0;

  double screenAwareSize(double size, BuildContext context) {
    double drawingWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return size * drawingWidth / baseWidth;
  }

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
            Expanded(
              child: MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    selectedCharacter = '1';
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: (selectedCharacter == '1')
                        ? screenAwareSize(0.0, context)
                        : screenAwareSize(30.0, context),
                  ),
                  child: Column(
                    children: [
                      Text(
                        names[0],
                        textScaleFactor: (selectedCharacter == '1') ? 1.0 : 0.8,
                      ),
                      SizedBox(
                        height: (selectedCharacter == '1') ? 14 : 10,
                      ),
                      AnimatedContainer(
                        height: (selectedCharacter == '1')
                            ? screenAwareSize(140.0, context)
                            : screenAwareSize(80.0, context),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[0]),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: (selectedCharacter == '1')
                            ? Text(
                                characterDescription[0],
                                textAlign: TextAlign.center,
                              )
                            : const SizedBox(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    selectedCharacter = '2';
                  });
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                      height: (selectedCharacter == '2')
                          ? screenAwareSize(140.0, context)
                          : screenAwareSize(80.0, context),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCubic,
                      margin: EdgeInsets.only(
                        top: (selectedCharacter == '2')
                            ? screenAwareSize(0.0, context)
                            : screenAwareSize(30.0, context),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images[1]),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: (selectedCharacter == '2')
                          ? Text(
                              characterDescription[1],
                              textAlign: TextAlign.center,
                            )
                          : const SizedBox(),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: MaterialButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: const EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  selectedCharacter = '3';
                });
              },
              child: Column(
                children: [
                  AnimatedContainer(
                    height: (selectedCharacter == '3')
                        ? screenAwareSize(115.0, context)
                        : screenAwareSize(80.0, context),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    margin: EdgeInsets.only(
                      top: (selectedCharacter == '3')
                          ? screenAwareSize(0.0, context)
                          : screenAwareSize(30.0, context),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[2]), fit: BoxFit.fitHeight),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: (selectedCharacter == '3')
                        ? Text(
                            characterDescription[2],
                            textAlign: TextAlign.center,
                          )
                        : const SizedBox(),
                  )
                ],
              ),
            )),
            Expanded(
              child: MaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    selectedCharacter = '4';
                  });
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                      height: (selectedCharacter == '4')
                          ? screenAwareSize(120.0, context)
                          : screenAwareSize(80.0, context),
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCubic,
                      margin: EdgeInsets.only(
                        top: (selectedCharacter == '4')
                            ? screenAwareSize(0.0, context)
                            : screenAwareSize(30.0, context),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images[3]),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: (selectedCharacter == '4')
                          ? Text(
                              characterDescription[3],
                              textAlign: TextAlign.center,
                            )
                          : const SizedBox(),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
