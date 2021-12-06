import 'package:flutter/material.dart';
import 'registration.dart';
import 'userinterface.dart';
import 'usrebooking.dart';

class myApp extends StatefulWidget{
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
      home: Scaffold(
        body: a ? Registration() : Container(),
      )
    )
    );
  }
}