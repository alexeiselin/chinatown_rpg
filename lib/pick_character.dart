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
        title: Text('Pick your character'),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    Column(children: [
                      Text('Greg'),




                    ],
                    )
                  ],
                ),
              )
            ],
          ) ),
    );
  }
}
