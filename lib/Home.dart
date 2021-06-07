import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'SignUp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text(
            'Learn Flutter',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        body: SignUp());
  }
}
