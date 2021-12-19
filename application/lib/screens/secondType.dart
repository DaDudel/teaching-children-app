import 'package:application/theming/myColors.dart';
import 'package:application/widgets/myButton.dart';
import 'package:application/widgets/myTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondType extends StatelessWidget {
  const SecondType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors().myAmber,
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text('ZAGADKA #2',
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
              child: Text('D_PA',
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
              Expanded(
                child: Container(),
              ),
              MyButton(buttonText: 'Ó', onPressed: () => {}),
              Expanded(
                child: Container(),
              ),
              MyButton(buttonText: 'U', onPressed: () => {}),
              Expanded(
                child: Container(),
              ),
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
