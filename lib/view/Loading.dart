import 'package:flutter/material.dart';
import 'package:learn_flutter/services/WorldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time;
  String location = 'Dhaka, Bangladesh';
  String flag = 'bangladesh.png';

  void getCurrentTime() async {
    WorldTime instance = WorldTime(
        location: location,
        flag: flag,
        url: 'Dhaka,%20Bangladesh');

    await instance.getTime();
    // showToast('Current date & time updated!');

    setState(() {
      time = instance.dateTime;
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': location,
        'flag': flag,
        'time': time
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Text(
          'Loading . . .',
          style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
