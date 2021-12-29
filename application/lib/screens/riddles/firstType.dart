import 'dart:math';

import 'package:application/routes/approuter.gr.dart';
import 'package:application/theming/myColors.dart';
import 'package:application/utils/wordProvider.dart';
import 'package:application/widgets/myButton.dart';
import 'package:application/widgets/myTextField.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstType extends StatelessWidget {
  const FirstType({Key? key, this.riddleNumber = 1}) : super(key: key);

  final int riddleNumber;

  @override
  Widget build(BuildContext context) {
    WordProvider wordProvider = Provider.of<WordProvider>(context);
    String answer = '';
    return Container(
      color: MyColors().myAmber,
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text('ZAGADKA #${riddleNumber.toString()}',
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
              child: Text('${wordProvider.chosenWord.riddle}',
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
              child: MyTextField(
                onChange: (text) {
                  answer = text;
                },
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          MyButton(
              buttonText: 'Dalej',
              onPressed: () {
                answer = answer.replaceAll(' ', '');
                answer = answer.toUpperCase();
                print(answer);
                if (answer == wordProvider.chosenWord.rightAnswer ||
                    answer ==
                        wordProvider.chosenWord.riddle.replaceAll(
                            '_', wordProvider.chosenWord.rightAnswer)) {
                  wordProvider.randomWord();
                  navigateToRiddles(context, riddleNumber);
                } else {
                  navigateToFinish(context, riddleNumber);
                }
              }),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

void navigateToRiddles(BuildContext context, int riddle) {
  Random random = new Random();
  int randomNumber = random.nextInt(3);
  switch (randomNumber) {
    case 0:
      {
        context.router.push(FirstRiddle(riddleNumber: riddle + 1));
      }
      break;
    case 1:
      {
        context.router.push(SecondRiddle(riddleNumber: riddle + 1));
      }
      break;
    case 2:
      {
        context.router.push(ThirdRiddle(riddleNumber: riddle + 1));
      }
      break;
  }
}

void navigateToFinish(BuildContext context, int riddle) {
  context.router.push(Finish(riddleNumber: riddle));
}
