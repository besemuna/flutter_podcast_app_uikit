import 'package:flutter/material.dart';
import 'package:flutter_podcast_app_ui_kit/Screens/ChannelScreen.dart';
import 'package:flutter_podcast_app_ui_kit/Screens/LibraryScreen.dart';
import 'package:flutter_podcast_app_ui_kit/Screens/ListeningScreen.dart';
import 'package:flutter_podcast_app_ui_kit/Screens/PlayListScreen.dart';
import 'package:flutter_podcast_app_ui_kit/Screens/TopScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast App UIKit',
      debugShowCheckedModeBanner: false,
      home: ListeningScreen(),
    );
  }
}
