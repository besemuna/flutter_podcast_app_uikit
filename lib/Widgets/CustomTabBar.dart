import 'package:flutter/material.dart';
import "../Tokens/Color.dart";
import "../Tokens/Typography.dart";
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  final text;
  final selected;

  CustomTabBar({this.text, this.selected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: selected == null ? Colour.grey300 : Colour.blue400),
        ),
        SizedBox(
          height: 19,
        ),
        selected != null
            ? Container(
                width: 20,
                height: 3,
                color: Colour.blue400,
              )
            : Container()
      ],
    );
  }
}
