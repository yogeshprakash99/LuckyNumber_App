import 'package:flutter/material.dart';

class screenCalc extends StatelessWidget {
  var value;
  screenCalc({this.value});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Lucky Number'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Lucky Number: $value'),
            ],
          )),
        ),
      ),
    );
  }
}
