import 'package:chinatown_rpg/pick_character.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    bottom: 0,
                    left: 16.0,
                    child: Column(
                      children:
                          "CHINATOWN".split('').map((c) => Text(c)).toList(),
                    )),
                Positioned(
                    bottom: 0,
                    right: 16.0,
                    child: Column(
                      children: "RPG".split('').map((c) => Text(c)).toList(),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Column(
                children: [
                  const Text(
                      'We will walk you through a great experience of real New York Chinatown.',
                      textAlign: TextAlign.justify),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Every Character is an NTF. Every time you level up, your NTF levels up.',
                    textAlign: TextAlign.justify,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const PickCharacter(),
                            ),
                          );
                        },
                        child: const Text(
                          'PICK YOUR CHARACTER',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
