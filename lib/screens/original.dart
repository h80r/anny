import 'package:anny_app/database/_dataModels.dart';
import 'package:flutter/material.dart';

class HerText extends StatefulWidget {
  @override
  _HerTextState createState() => _HerTextState();
}

class _HerTextState extends State<HerText> {
  OldText receivedData;

  @override
  Widget build(BuildContext context) {
    receivedData = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.3),
        bottomOpacity: 0.3,
        centerTitle: true,
        elevation: 0,
        title: Text(
          receivedData.toString(),
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: receivedData.color,
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black.withOpacity(0.15),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  receivedData.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Parisienne',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
