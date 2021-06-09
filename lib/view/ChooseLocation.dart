import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text(
            'Choose Location',
            style: TextStyle(
                color: Colors.white, fontSize: 16, letterSpacing: 1.25),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [],
        ));
  }
}
