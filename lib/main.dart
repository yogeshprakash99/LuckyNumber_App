import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luckynumberapp/Calculate.dart';
import 'package:luckynumberapp/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name, value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.red,
            title: Text(
              'LUCKY NUMBER',
              style: TextStyle(fontFamily: 'Pacifico', letterSpacing: 4),
            ),
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a word/name',
                      labelText: 'Enter',
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (name) {
                      value = name;
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      int sum = 0, val = 0, m = 0, total = 0;
                      if (value.trim().isNotEmpty)
                        for (int i = 0; i < value.length; i++) {
                          if (value[i] == 'A' || value[i] == 'a') {
                            val = 1;
                          } else if (value[i] == 'b' || value[i] == 'B') {
                            val = 2;
                          } else if (value[i] == 'c' || value[i] == 'C') {
                            val = 3;
                          } else if (value[i] == 'd' || value[i] == 'D') {
                            val = 4;
                          } else if (value[i] == 'e' || value[i] == 'E') {
                            val = 5;
                          } else if (value[i] == 'f' || value[i] == 'F') {
                            val = 8;
                          } else if (value[i] == 'g' || value[i] == 'G') {
                            val = 3;
                          } else if (value[i] == 'h' || value[i] == 'H') {
                            val = 5;
                          } else if (value[i] == 'i' || value[i] == 'I') {
                            val = 1;
                          } else if (value[i] == 'j' || value[i] == 'J') {
                            val = 1;
                          } else if (value[i] == 'k' || value[i] == 'K') {
                            val = 2;
                          } else if (value[i] == 'l' || value[i] == 'L') {
                            val = 3;
                          } else if (value[i] == 'm' || value[i] == 'M') {
                            val = 4;
                          } else if (value[i] == 'n' || value[i] == 'N') {
                            val = 5;
                          } else if (value[i] == 'o' || value[i] == 'O') {
                            val = 7;
                          } else if (value[i] == 'p' || value[i] == 'P') {
                            val = 8;
                          } else if (value[i] == 'q' || value[i] == 'Q') {
                            val = 1;
                          } else if (value[i] == 'r' || value[i] == 'R') {
                            val = 2;
                          } else if (value[i] == 's' || value[i] == 'S') {
                            val = 3;
                          } else if (value[i] == 't' || value[i] == 'T') {
                            val = 4;
                          } else if (value[i] == 'u' || value[i] == 'U') {
                            val = 6;
                          } else if (value[i] == 'v' || value[i] == 'V') {
                            val = 6;
                          } else if (value[i] == 'w' || value[i] == 'W') {
                            val = 6;
                          } else if (value[i] == 'x' || value[i] == 'X') {
                            val = 5;
                          } else if (value[i] == 'y' || value[i] == 'Y') {
                            val = 1;
                          } else if (value[i] == 'z' || value[i] == 'Z') {
                            val = 7;
                          } else if (value[i] == ' ') {
                            val = 0;
                          }
                          sum = sum + val;
                        }
                      while (sum > 0) {
                        while (sum != 0) {
                          m = sum % 10;
                          total = total + m;
                          sum = (sum / 10).floor();
                        }
                        if (total > 9) {
                          sum = total;
                          total = 0;
                        }
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => screenCalc(value: total),
                      ));
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Text('Yogesh Prakash'),
                  accountEmail: Text('test@dev.com'),
                  currentAccountPicture: CircleAvatar(
                    child: Image(
                      image: AssetImage(
                          'Image/105769079_10217500208479055_1053899048265455769_n.jpg'),
                    ),
                  ),
                ),
                ListTile(
                    title: Text('About'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutPage()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
