import 'package:application/routes/approuter.gr.dart';
import 'package:application/widgets/myButton.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:application/theming/myColors.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors().myAmber,
      child: Center(
        child: Column(
          children: [
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text('Naucz się ortografii!',
                    style: GoogleFonts.mcLaren(
                      fontSize: 64,
                    )),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'start',
                  onPressed: () => {navigateToRiddles(context)},
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(
                  buttonText: 'ranking',
                  onPressed: () => {navigateToRanking(context)},
                )),
            Container(
                padding: EdgeInsets.all(16.0),
                child: MyButton(buttonText: 'opcje', onPressed: () => {})),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToRiddles(BuildContext context) {
  context.router.navigate(FirstRiddle(riddleNumber: 1));
}

void navigateToRanking(BuildContext context) {
  context.router.navigateNamed('/ranking-screen');
}
