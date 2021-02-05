import 'package:flutter/material.dart';

class BaseText {
  Color color;
  String text;

  BaseText({this.color, this.text});
}

class OldText extends BaseText{
  DateTime date;

  OldText({color, text, this.date}) : super(color: color, text: text);

  @override
  String toString() {
    return "${date.day}/${date.month}";
  }
}

class NewText extends BaseText {
  ImageProvider<dynamic> image;

  NewText({color, text, this.image}) : super(color: color, text: text);
}

class Anime {
  ImageProvider cover;
  String title;
  String comments;
  String synopsis;

  Anime({this.title, this.comments, this.synopsis, this.cover});
}

class HDay {
  OldText original;
  NewText myText;
  Anime toWatch;
  DateTime date;

  HDay({this.original, this.myText, this.toWatch, this.date});

  @override
  String toString() {
    return "${date.day}/${date.month}";
  }
}