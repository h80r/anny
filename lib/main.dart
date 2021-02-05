import 'package:anny_app/screens/anime.dart';
import 'package:anny_app/screens/my_text.dart';
import 'package:anny_app/screens/original.dart';
import 'package:anny_app/screens/loading.dart';
import 'package:anny_app/screens/select_date.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => MyText(),
    '/original': (context) => HerText(),
    '/anime' : (context) => AnimeScreen(),
    '/select_date': (context) => SelectDate(),
  },
));