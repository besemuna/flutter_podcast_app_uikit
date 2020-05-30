import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Icons/custom_icon_icons.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/CustomTabBar.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/DetailedPlaylistWidget.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/PlayListTwoWidget.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/TopPodcastWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Tokens/Typography.dart";
import "../Tokens/Color.dart";
import "../Models/PlayList.dart";
import "../Models/TopPodcast.dart";
import "dart:ui";

class ListeningScreen extends StatefulWidget {
  @override
  _ListeningScreenState createState() => _ListeningScreenState();
}

class _ListeningScreenState extends State<ListeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour.blue400,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 77,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffE0E3E5),
                              borderRadius: BorderRadius.circular(20)),
                          width: 80,
                          height: 5,
                          alignment: Alignment.bottomLeft,
                        ),
                        SizedBox(
                          height: 47,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/images/three.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 54,
                        ),
                        Text(
                          "Independently Good Design",
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colour.grey400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Adobe / Gimlet Creative",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colour.grey300,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          "NOV 26, 2019",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colour.grey300,
                          ),
                        ),
                        SizedBox(
                          height: 122,
                        ),
                        Container(
                          width: double.infinity,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colour.grey100,
                              borderRadius: BorderRadius.circular(200)),
                          child: FractionallySizedBox(
                            widthFactor: .5,
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              color: Colour.blue400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "08:21",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colour.grey300),
                            ),
                            Text(
                              "21:00",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colour.grey300),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 88,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              CustomIcon.download,
                              color: Colour.grey200,
                            ),
                            Icon(
                              CustomIcon.backward,
                              color: Colour.grey200,
                            ),
                            Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colour.blue400,
                              ),
                              child: Center(
                                child: Icon(
                                  CustomIcon.play,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Icon(
                              CustomIcon.forward,
                              color: Colour.grey200,
                            ),
                            Icon(
                              CustomIcon.bookmark,
                              color: Colour.grey200,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
