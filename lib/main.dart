import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(child: Text("Magic 8 Ball")),
            backgroundColor: Colors.black,
          ),
          body: Magic(),
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {



  int ballNumber = 1;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      print("**************IN myf******************************");

      var ballList = [1, 2, 3, 4, 5];
      final _random = new Random();
      setState(() {
        ballNumber = ballList[_random.nextInt(ballList.length)];
      });

      print(ballNumber);
    });
    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  Widget build(BuildContext context) {

    myf() {
      print("**************IN myf******************************");

      var ballList = [1, 2, 3, 4, 5];
      final _random = new Random();
      setState(() {
        ballNumber = ballList[_random.nextInt(ballList.length)];
      });

      print(ballNumber);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    myf();
                  },
                  child: Image.asset("images/ball$ballNumber.png")),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Tap Magic 8 Ball",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 50.0),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "For your answers !",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 30.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
