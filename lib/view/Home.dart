import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  Map data = {};
  String time;
  String location;
  String flag;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    DateTime dateTime = DateTime.parse(data['time']);
    location = data['location'];
    flag = data['flag'];

    if (dateTime != null) {
      time = DateFormat.jm().format(dateTime);
    }

    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 120, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey.shade500,
                    ),
                    label: Text(
                      'Edit Location',
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    )),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(location,
                    style: TextStyle(fontSize: 24, color: Colors.white)),
              ),
              SizedBox(height: 24),
              Center(
                child: Text(time,
                    style: TextStyle(fontSize: 48, color: Colors.white)),
              ),
            ],
          ),
        )));
  }
}
