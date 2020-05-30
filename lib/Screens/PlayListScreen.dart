import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Icons/custom_icon_icons.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/CustomTabBar.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/PlayListTwoWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Tokens/Typography.dart";
import "../Tokens/Color.dart";
import "../Models/PlayList.dart";
import "../Models/TopPodcast.dart";
import "dart:ui";

class PlayListScreen extends StatefulWidget {
  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFDFC),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(
                  height: 59,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            CustomIcon.angle_left,
                            color: Colors.black,
                          ),
                          Text("Playlist",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Icon(
                            CustomIcon.ellipsis,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 37,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: playlists.length,
                        itemBuilder: (BuildContext context, int index) =>
                            index == 0
                                ? PlayListTwoWidget(
                                    playlist: playlists[index],
                                    selected: true,
                                  )
                                : PlayListTwoWidget(playlist: playlists[index]),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/images/three.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Independently Good Design",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colour.grey400),
                            ),
                            Text(
                              "21 min",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colour.grey300),
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(CustomIcon.play)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
