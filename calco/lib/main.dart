import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(cal());
}

class cal extends StatefulWidget {
  @override
  _calState createState() => _calState();
}

class _calState extends State<cal> {
  num x1;
  num x2;
  num resoult;
  String type = '+';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(
                      Icons.calculate_outlined,
                      size: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.lightBlueAccent[100],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      textAlign: TextAlign.center,
                      onSubmitted: (value) {
                        setState(() {
                          x1 = int.parse(value);
                          print(x1);
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.lightBlueAccent[100],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.go,
                      onSubmitted: (value) {
                        setState(() {
                          x2 = int.parse(value);
                          print(x2);
                        });
                      },
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])),
                            onPressed: () {
                              setState(() {
                                type = '*';
                              });
                            },
                            child: Text(
                              '*',
                              style: TextStyle(fontSize: 30),
                            )),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])),
                            onPressed: () {
                              setState(() {
                                type = '/';
                              });
                            },
                            child: Text(
                              '/',
                              style: TextStyle(fontSize: 30),
                            )),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])),
                            onPressed: () {
                              setState(() {
                                type = '+';
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 30),
                            )),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])),
                            onPressed: () {
                              setState(() {
                                type = '-';
                              });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: 30),
                            )),
                      ]),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue[200])),
                    onPressed: () {
                      setState(() {
                        ///////////////////////
                        ///
                        switch (type) {
                          case '+':
                            resoult = x1 + x2;
                            break;
                          case '-':
                            resoult = x1 - x2;
                            break;
                          case '*':
                            resoult = x1 * x2;
                            break;
                          case '/':
                            resoult = x1 / x2;
                            break;
                        }
                        //////////////////////

                        print(resoult);
                      });
                    },
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'the resoult is = ${resoult}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ///////////////////////
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
