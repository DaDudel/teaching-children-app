import 'package:application/screens/mainScreen.dart';
import 'package:application/theming/myColors.dart';
import 'package:application/widgets/myButton.dart';
import 'package:application/widgets/myTextField.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({Key? key, this.riddleNumber = 1}) : super(key: key);

  final int riddleNumber;

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
              child: Text('Koniec gry!',
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
              child: Text('Zdobyte punkty: ${(riddleNumber - 1).toString()}',
                  style: GoogleFonts.mcLaren(
                    fontSize: 48,
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
              child: Text('Podaj swój pseudonim:',
                  style: GoogleFonts.mcLaren(
                    fontSize: 48,
                  )),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            width: 500,
            child: Material(
              color: Colors.transparent,
              child: MyTextField(),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          MyButton(
              buttonText: 'Kontynuuj',
              onPressed: () => {navigateToRanking(context)}),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

void navigateToRanking(BuildContext context) {
  context.router.navigateNamed('/ranking-screen');
}
