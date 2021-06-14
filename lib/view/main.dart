import 'package:flutter/material.dart';
import 'package:learn_flutter/view/SignUp.dart';

import 'Home.dart';
import 'ChooseLocation.dart';
import 'Loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => SignUp(),
        // '/': (context) => Loading(),
        // '/home': (context) => Home(),
        // '/location': (context) => ChooseLocation(),
      },
    ));
