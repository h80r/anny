import 'package:anny_app/database/_dataModels.dart';
import 'package:anny_app/services/data_utils.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  Map receivedData;

  @override
  Widget build(BuildContext context) {
    receivedData = ModalRoute.of(context).settings.arguments;

    List<HDay> database = receivedData['database'];
    List<HDay> may = database.sublist(0, 25);
    List<HDay> june = database.sublist(25);
    HDay currentDay = receivedData['current'];

    void updateSelected(HDay selected) {
      receivedData['current'] = selected;
      Navigator.pop(context, receivedData);
    }

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
        title: Text(
          "Selecione uma data",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.black.withOpacity(0.5),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Column(
                children: <Widget>[
                  Text(
                    "Maio",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(height: 30, color: Colors.white,),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: may.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      bool isButtonEnabled = isUnlocked(may[index].date);

                      return RaisedButton(
                        padding: EdgeInsets.all(0),
                        color: isButtonEnabled
                            ? (isSameDay(may[index].date, currentDay.date)
                            ? Colors.purple[800]
                            : Colors.red[900])
                            : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: isButtonEnabled
                            ? (() {updateSelected(may[index]);})
                            : (() {}),
                        child: Text(
                          "${may[index].date.day}",
                          softWrap: false,
                          style: TextStyle(
                            color: isButtonEnabled
                                ? Colors.white
                                : Colors.grey,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.black.withOpacity(0.5),
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Column(
                children: <Widget>[
                  Text(
                    "Junho",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(height: 30, color: Colors.white,),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: june.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      bool isButtonEnabled = isUnlocked(june[index].date);

                      return RaisedButton(
                        padding: EdgeInsets.all(0),
                        color: isButtonEnabled
                            ? (isSameDay(june[index].date, currentDay.date)
                            ? Colors.purple[800]
                            : Colors.red[900])
                            : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        onPressed: isButtonEnabled
                            ? (() {updateSelected(june[index]);})
                            : (() {}),
                        child: Text(
                          "${june[index].date.day}",
                          style: TextStyle(
                            color: isButtonEnabled
                                ? Colors.white
                                : Colors.grey,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
