import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Icons/custom_icon_icons.dart';
import 'package:flutter_podcast_app_ui_kit/Models/TopPodcast.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Tokens/Color.dart";

class TopPodcastWidget extends StatelessWidget {
  final TopPodcast podcast;

  TopPodcastWidget({this.podcast});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24, top: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colour.grey100),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(podcast.picture),
              ),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                podcast.title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colour.grey400,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                podcast.secondary,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colour.grey300,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            CustomIcon.bookmark,
            color: !podcast.favorite ? Colour.grey200 : Colour.blue300,
          )
        ],
      ),
    );
  }
}
