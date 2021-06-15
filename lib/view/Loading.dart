import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
    WorldTime instance =
    WorldTime(location: location, flag: flag, url: 'Dhaka,%20Bangladesh');

    await instance.getTime();

    setState(() {
      time = instance.dateTime;

      print(time);

      if (time != null) {
        // Navigator.pushReplacementNamed(context, '/Home',
        //     arguments: {'location': location, 'flag': flag, 'time': time});
        Navigator.pushReplacementNamed(context, '/SignUp');
      }
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
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitFadingCircle(
            color: Colors.amberAccent,
            size: 80.0,
          ),
        ));
  }
}
