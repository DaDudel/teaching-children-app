import 'dart:math';

import 'package:application/theming/myColors.dart';
import 'package:application/widgets/myButton.dart';
import 'package:application/widgets/myTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdType extends StatelessWidget {
  const ThirdType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(2);

    return Container(
      color: MyColors().myAmber,
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text('ZAGADKA #3',
                  style: GoogleFonts.mcLaren(
                    fontSize: 64,
                  )),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text('WYBIERZ POPRAWNY ZAPIS WYRAZU',
                  style: GoogleFonts.mcLaren(
                    fontSize: 48,
                  )),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            children: [
              if (randomNumber == 0) ...[
                Expanded(
                  child: Container(),
                ),
                MyButton(buttonText: 'DÓPA', onPressed: () => {}),
                Expanded(
                  child: Container(),
                ),
                MyButton(buttonText: 'DUPA', onPressed: () => {}),
                Expanded(
                  child: Container(),
                ),
              ] else ...[
                Expanded(
                  child: Container(),
                ),
                MyButton(buttonText: 'DUPA', onPressed: () => {}),
                Expanded(
                  child: Container(),
                ),
                MyButton(buttonText: 'DÓPA', onPressed: () => {}),
                Expanded(
                  child: Container(),
                ),
              ]
            ],
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
