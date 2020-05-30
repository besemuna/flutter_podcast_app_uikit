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

class ChannelScreen extends StatefulWidget {
  @override
  _ChannelScreenState createState() => _ChannelScreenState();
}

class _ChannelScreenState extends State<ChannelScreen> {
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
                  height: 58,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            CustomIcon.angle_left,
                            color: Colors.black,
                          ),
                          Container(
                            height: 159,
                            width: 159,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/one.png"),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 60,
                                    offset: Offset(0, 30),
                                    color: Colors.black.withOpacity(0.16),
                                  )
                                ]),
                          ),
                          Icon(
                            CustomIcon.ellipsis,
                            color: Colors.black,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Text(
                        "The Book Review",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colour.grey400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "The New York Times",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colour.blue400,
                        ),
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      Container(
                        width: 160,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colour.blue400,
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              CustomIcon.bookmark,
                              color: Colors.white,
                            ),
                            Text(
                              "Add favorite",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Playlist",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 1,
                        color: Colour.grey100,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: detailedPlaylist.length,
                        itemBuilder: (BuildContext context, int index) =>
                            DetailedPlaylistWidget(
                          detailePlaylist: detailedPlaylist[index],
                        ),
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
