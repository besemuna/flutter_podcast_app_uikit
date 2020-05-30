import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Icons/custom_icon_icons.dart";
import "../Tokens/Color.dart";
import "../Models/PlayList.dart";

class PlayListTwoWidget extends StatelessWidget {
  final PlayList playlist;
  final bool selected;

  PlayListTwoWidget({this.playlist, this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 31, top: 31),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colour.grey100,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            CustomIcon.play,
            color: selected != null ? Colour.blue400 : Colour.grey200,
            size: 24,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                playlist.title,
                style: GoogleFonts.poppins(fontSize: 16, color: Colour.grey400),
              ),
              Text(
                playlist.secondary,
                style: GoogleFonts.poppins(fontSize: 15, color: Colour.grey300),
              )
            ],
          ),
          Spacer(),
          Text(
            playlist.trailing,
            style: GoogleFonts.poppins(fontSize: 15, color: Colour.grey300),
          )
        ],
      ),
    );
  }
}
