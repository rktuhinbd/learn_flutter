import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Register to proceed',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Name'),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(
                const Radius.circular(4.0),
              ),
              border: new Border.all(
                color: Colors.amber,
                width: 1.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your name',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Email'),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(
                const Radius.circular(4.0),
              ),
              border: new Border.all(
                color: Colors.amber,
                width: 1.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your email',
                  suffixText: '@gmail.com',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Password'),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(
                const Radius.circular(4.0),
              ),
              border: new Border.all(
                color: Colors.amber,
                width: 1.0,
              ),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Confirm Password'),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(
                const Radius.circular(4.0),
              ),
              border: new Border.all(
                color: Colors.amber,
                width: 1.0,
              ),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
              // margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 48,
              child: new MaterialButton(
                onPressed: () {
                  print('Button clicked');
                },
                color: Colors.amberAccent,
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ))
        ],
      ),
    );
  }
}
