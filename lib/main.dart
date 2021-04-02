import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, int index) {
            return Container(
              child: Card(
                child: Container(
                  margin: EdgeInsets.only(right: 30.0, top: 30.0),
                  height: 250.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      gradient: LinearGradient(colors: [
                        Colors.green[400],
                        Colors.lightBlueAccent,
                        Colors.blue
                      ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(11),
                                bottomRight: Radius.circular(11)),
                            child: Image.asset('image/image.png',
                                fit: BoxFit.contain,
                                height: 130,
                                width: 200,
                                alignment: Alignment.topLeft),
                          )),
                      Text('BootStrap${index>0?'2':''}',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.start),
                      Text(''),
                      Text('Readonly plain text If you',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('want to have',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text(''),
                      Text('2020-09-21', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
