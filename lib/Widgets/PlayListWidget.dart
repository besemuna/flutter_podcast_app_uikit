import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Icons/custom_icon_icons.dart";
import "../Tokens/Color.dart";
import "../Models/PlayList.dart";

class PlayListWidget extends StatelessWidget {
  final PlayList playlist;

  PlayListWidget({this.playlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            CustomIcon.play,
            color: Colour.blue400,
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
