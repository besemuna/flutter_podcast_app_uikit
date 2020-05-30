import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Icons/custom_icon_icons.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/CustomTabBar.dart';
import 'package:flutter_podcast_app_ui_kit/Widgets/PlayListWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import "../Tokens/Typography.dart";
import "../Tokens/Color.dart";
import "../Models/PlayList.dart";
import "../Models/TopPodcast.dart";
import "dart:ui";

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  int _activePage = 0;

  bottomOntap(value) {
    setState(() {
      _activePage = value;
    });
    print(value);
  }

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
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 74),
                      Text(
                        "Library",
                        style:
                            GoogleFonts.poppins(textStyle: Typographyy.display),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        width: 306,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomTabBar(
                              text: "Listen now",
                              selected: true,
                            ),
                            CustomTabBar(
                              text: "Discover",
                            ),
                            CustomTabBar(
                              text: "Favorite",
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xffE0E3E5),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Top Podcasts In Books",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(
                            "View all",
                            style: GoogleFonts.poppins(
                                color: Colour.blue400, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xffEBEBEB),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 190,
                        child: ListView.builder(
                          itemCount: topPodcastsHome.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                            margin: EdgeInsets.only(right: 25),
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image:
                                    AssetImage(topPodcastsHome[index].picture),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Playlist",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(
                            "View all",
                            style: GoogleFonts.poppins(
                                color: Colour.blue400, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xffEBEBEB),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: playlists.length,
                        itemBuilder: (BuildContext context, int index) =>
                            PlayListWidget(playlist: playlists[index]),
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xffE0E3E5), width: 1),
          ),
        ),
        height: 90,
        child: Center(
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            onTap: bottomOntap,
            currentIndex: _activePage,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            selectedItemColor: Colour.blue300,
            unselectedItemColor: Color(0xffBEBEBE),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6, top: 10),
                  child: Icon(CustomIcon.list),
                ),
                title: Text(
                  "Library",
                  style: GoogleFonts.poppins(fontSize: 13),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6, top: 10),
                  child: Icon(CustomIcon.microphone),
                ),
                title: Text("New"),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6, top: 10),
                  child: Icon(CustomIcon.user),
                ),
                title: Text("Profile"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
