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

class FourthType extends StatelessWidget {
  const FourthType({Key? key, this.riddleNumber = 1, this.trainingMode = 0})
      : super(key: key);

  final int riddleNumber;
  final int trainingMode;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(2);
    WordProvider wordProvider = Provider.of<WordProvider>(context);
    String rightWord = wordProvider.chosenWord.riddle
        .replaceAll('_', wordProvider.chosenWord.rightAnswer);
    String wrongWord = wordProvider.chosenWord.riddle
        .replaceAll('_', wordProvider.chosenWord.wrongAnswer);
    wrongWord =
        wrongWord.replaceAll(RegExp(r'[^A-Za-zżźćńółęąśŻŹĆĄŚĘŁÓŃ]'), '');

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
              child: Container(
                child: Text('CZY PODANY WYRAZ ZAPISANY JEST POPRAWNIE?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mcLaren(
                      fontSize: 48,
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          if (randomNumber == 0) ...[
            Material(
              color: Colors.transparent,
              child: Text(rightWord,
                  style: GoogleFonts.mcLaren(
                    fontSize: 64,
                  )),
            ),
          ] else ...[
            Material(
              color: Colors.transparent,
              child: Text(wrongWord,
                  style: GoogleFonts.mcLaren(
                    fontSize: 64,
                  )),
            ),
          ],
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
                MyButton(
                    buttonText: 'TAK',
                    onPressed: () {
                      wordProvider.randomWord();
                      navigateToRiddles(context, riddleNumber, trainingMode);
                    }),
                Expanded(
                  child: Container(),
                ),
                MyButton(
                    buttonText: 'NIE',
                    onPressed: () => {
                          navigateToFinish(context, riddleNumber, trainingMode)
                        }),
                Expanded(
                  child: Container(),
                ),
              ] else ...[
                Expanded(
                  child: Container(),
                ),
                MyButton(
                    buttonText: 'TAK',
                    onPressed: () => {
                          navigateToFinish(context, riddleNumber, trainingMode)
                        }),
                Expanded(
                  child: Container(),
                ),
                MyButton(
                    buttonText: 'NIE',
                    onPressed: () {
                      wordProvider.randomWord();
                      navigateToRiddles(context, riddleNumber, trainingMode);
                    }),
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

void navigateToRiddles(BuildContext context, int riddle, int training) {
  if (training == 1) {
    context.router
        .push(FourthRiddle(riddleNumber: riddle + 1, trainingMode: 1));
    return;
  }
  Random random = new Random();
  int randomNumber = random.nextInt(4);
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
    case 3:
      {
        context.router.push(FourthRiddle(riddleNumber: riddle + 1));
      }
      break;
  }
}

void navigateToFinish(BuildContext context, int riddle, int training) {
  if (training == 1) {
    context.router.push(FinishTraining(riddleNumber: riddle));
    return;
  }
  context.router.push(Finish(riddleNumber: riddle));
}
