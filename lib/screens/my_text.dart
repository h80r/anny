import 'package:anny_app/database/_dataModels.dart';
import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  Map receivedData;

  @override
  Widget build(BuildContext context) {
    receivedData = receivedData != null
        ? receivedData
        : ModalRoute.of(context).settings.arguments;

    HDay selectedDay = receivedData['current'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.3),
        bottomOpacity: 0.3,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () async {
            dynamic result = await Navigator.pushNamed(context, '/select_date', arguments: receivedData);
            setState(() {receivedData = result;});
          },
          icon: Icon(Icons.calendar_today, size: 20,),
          color: Colors.white,
        ),
        title: Text(
          selectedDay.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: selectedDay.myText.color,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
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
                    selectedDay.myText.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Parisienne',
                    ),
                  ),
                  Divider(
                    height: 80,
                    color: Colors.white,
                  ),
                  Image(
                    image: selectedDay.myText.image,
                    color: Colors.white,
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: FittedBox(
        fit: BoxFit.fitWidth,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ButtonTheme(
            height: 50,
            minWidth: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.black.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/original', arguments: selectedDay.original);
                  },
                  child: Text(
                    "Original",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                FlatButton(
                  color: Colors.black.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/anime', arguments: selectedDay.toWatch);
                  },
                  child: Text(
                    "Anime",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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