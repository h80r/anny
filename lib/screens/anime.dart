import 'dart:ui';

import 'package:anny_app/database/_dataModels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimeScreen extends StatefulWidget {
  @override
  _AnimeScreenState createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  Anime receivedData;

  @override
  Widget build(BuildContext context) {
    receivedData = ModalRoute.of(context).settings.arguments;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: receivedData.cover,
          fit: BoxFit.cover,
        )
      ),
      child: Stack(
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black.withOpacity(0.3),
              centerTitle: true,
              title: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  receivedData.title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.white.withOpacity(0),
            body: Card(
              color: Colors.black.withOpacity(0.5),
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Column(
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Meus Comentários",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Text(
                      receivedData.comments,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      height: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Sinópse",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Text(
                      receivedData.synopsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
