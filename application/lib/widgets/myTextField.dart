import 'package:application/theming/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, this.onChange}) : super(key: key);

  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    var msgController = TextEditingController();
    msgController.clear();
    return TextFormField(
      controller: msgController,
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
      onChanged: onChange,
    );
  }
}
