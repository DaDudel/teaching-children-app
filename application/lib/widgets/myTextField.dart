import 'package:application/theming/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.mcLaren(
        fontSize: 48,
      ),
      decoration: InputDecoration(
        filled: false,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColors().secondaryColor,
          ),
        ),
      ),
    );
  }
}
