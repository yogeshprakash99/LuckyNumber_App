import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('About App'),
            backgroundColor: Colors.red,
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('V.1.0 by Yogesh Prakash')],
              ),
            ),
          )),
    );
  }
}
