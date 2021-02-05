import 'dart:math';

import 'package:anny_app/database/_dataModels.dart';
import 'package:anny_app/database/colors.dart';
import 'package:anny_app/database/animes.dart';
import 'package:anny_app/database/newText.dart';
import 'package:anny_app/database/originalText.dart';

final randomizer = new Random(08012001);

final myColors = genColorList();
final myAnimeList = genAnimeList(randomizer);
final myTexts = genNewTexts(myColors);
final herTexts = genOldTexts(myColors);

List<HDay> genDatabase()
{
  var output = new List<HDay>();
  output = [];

  for (var day = 0; day < 30; day++)
    {
      output.add(new HDay(
        original: herTexts[day],
        myText: myTexts[day],
        toWatch: myAnimeList[day],
        date: null
      ));
    }

  output.shuffle(randomizer);

  for (var day = 0; day < 30; day++)
    {
      var month = 5 + day ~/ 25;
      var calendarDay = day < 25 ? (7 + day) : day - 24;
      output[day].date = new DateTime(2020, month, calendarDay);
    }

  return output;
}