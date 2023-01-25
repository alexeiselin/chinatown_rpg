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
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: [
                  Text(
                      'We will walk you through a great experience of real New York Chinatown.',
                      textAlign: TextAlign.justify),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Every Character is an NTF. Every time you level up, your NTF levels up.',
                    textAlign: TextAlign.justify,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'PICK YOUR CHARACTER',
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
