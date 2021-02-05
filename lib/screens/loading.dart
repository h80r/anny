import 'package:anny_app/services/_dataBuilder.dart';
import 'package:anny_app/database/_dataModels.dart';
import 'package:anny_app/services/data_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadToday() async {
    List<HDay> database = genDatabase();
    HDay today = database.firstWhere((instance) => isSameDay(instance.date), orElse: () => database.first);
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'database' : database,
      'current' : today,
    });
  }

  @override
  void initState() {
    super.initState();
    loadToday();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitPumpingHeart(
              color: Colors.redAccent,
              size: 150,
            ),
            SizedBox(height: 40,),
            Text(
              "I Love You",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
