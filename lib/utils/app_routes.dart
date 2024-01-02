import 'package:exam_app/screen/home/view/home_screen.dart';
import 'package:exam_app/screen/music/view/music_player_screen.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const HomeScreen(),
  'music': (context) => const MusicPlayerScreen(),
};
