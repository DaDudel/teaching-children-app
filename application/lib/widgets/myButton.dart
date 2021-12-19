import 'package:application/theming/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String? buttonText;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(350, 20)),
          backgroundColor: MaterialStateProperty.all(MyColors().secondaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(85.0),
              side: BorderSide(color: MyColors().secondaryColor),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
          ),
        ),
        onPressed: onPressed as void Function()?,
        child: Text(buttonText!.toUpperCase(),
            style: GoogleFonts.mcLaren(
              color: Colors.white,
              fontSize: 48.0,
              //fontWeight: FontWeight.w500,
              //fontFamily: 'RobotoMono',
            )));
  }
}
