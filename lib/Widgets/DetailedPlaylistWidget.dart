import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Icons/custom_icon_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Models/TopPodcast.dart";
import "../Tokens/Color.dart";

class DetailedPlaylistWidget extends StatelessWidget {
  final PlayListDeep detailePlaylist;

  DetailedPlaylistWidget({this.detailePlaylist});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 15, top: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colour.grey100,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                CustomIcon.play,
                color: Colour.grey200,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    detailePlaylist.date,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colour.grey300,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    detailePlaylist.title,
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Colour.grey400),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    detailePlaylist.secondary,
                    style: GoogleFonts.poppins(
                        fontSize: 15, color: Colour.grey300),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 55),
            child: Row(
              children: <Widget>[
                Text(
                  "Details",
                  style: GoogleFonts.poppins(
                    color: Colour.blue400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  detailePlaylist.time,
                  style: GoogleFonts.poppins(
                    color: Colour.grey300,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
