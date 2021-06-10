import 'package:flutter/material.dart';

import 'Home.dart';
import 'ChooseLocation.dart';
import 'Loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
      // home: Home())
    ));
