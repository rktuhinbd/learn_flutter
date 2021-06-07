import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Profile.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = '';
    String email = '';
    String password = '';
    String confirmPassword = '';

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
                color: Colors.amberAccent,
                width: 1.0,
              ),
            ),
            child: TextField(
              onChanged: (newText) {
                name = newText;
              },
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
                color: Colors.amberAccent,
                width: 1.0,
              ),
            ),
            child: TextField(
              onChanged: (newText) {
                email = newText;
              },
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
                color: Colors.amberAccent,
                width: 1.0,
              ),
            ),
            child: TextField(
              obscureText: true,
              onChanged: (newText) {
                password = newText;
              },
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
                color: Colors.amberAccent,
                width: 1.0,
              ),
            ),
            child: TextField(
              obscureText: true,
              onChanged: (newText) {
                confirmPassword = newText;
              },
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
                  print('Name: ' + name.toString());
                  print('Email: ' + email.toString());
                  print('Password: ' + password.toString());
                  print('Confirm Password: ' + confirmPassword.toString());
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()));
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
