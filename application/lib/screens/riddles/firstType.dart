import 'package:application/routes/approuter.gr.dart';
import 'package:application/theming/myColors.dart';
import 'package:application/widgets/myButton.dart';
import 'package:application/widgets/myTextField.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstType extends StatelessWidget {
  const FirstType({Key? key, this.riddleNumber = 1}) : super(key: key);

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
              child: Text('D_PA',
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
              buttonText: 'Dalej',
              onPressed: () => {navigateToRiddles(context, riddleNumber)}),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

void navigateToRiddles(BuildContext context, int riddle) {
  context.router.push(FirstRiddle(riddleNumber: riddle + 1));
}
