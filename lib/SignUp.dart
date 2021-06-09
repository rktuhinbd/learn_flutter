import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ListExample.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    String name;
    String email;
    String password;
    String confirmPassword;

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
                letterSpacing: 1.25,
                fontSize: 24,
                color: Colors.grey.shade900),
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
              controller: nameController,
              // onChanged: (newText) {
              //   name = newText;
              // },
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
              controller: emailController,
              // onChanged: (newText) {
              //   email = newText;
              // },
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
              controller: passwordController,
              // onChanged: (newText) {
              //   password = newText;
              // },
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
              controller: confirmPasswordController,
              // onChanged: (newText) {
              //   confirmPassword = newText;
              // },
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
                  name = nameController.text;
                  email = emailController.text;
                  password = passwordController.text;
                  confirmPassword = confirmPasswordController.text;

                  bool flag = true;

                  if (name.length > 1) {
                    print('Name: ' + name.toString());
                  } else {
                    showToast('Name can\'t be empty');
                    flag = false;
                    return;
                  }

                  if (validateEmail(email)) {
                    print('Email: ' + email.toString());
                  } else {
                    showToast('Email pattern doesn\'t match');
                    flag = false;
                    return;
                  }

                  if (password.length > 5) {
                    if (validatePassword(password)) {
                      print('Password: ' + email.toString());
                    } else {
                      showToast('Password isn\'t strong enough');
                      flag = false;
                      return;
                    }
                  } else {
                    showToast('Password length should be at least 6');
                    flag = false;
                    return;
                  }

                  if (confirmPassword.length > 5) {
                    if (validatePassword(password)) {
                      if (password == confirmPassword) {
                        print(
                            'Confirm Password: ' + confirmPassword.toString());
                      } else {
                        showToast('Both password doesn\'t match');
                        flag = false;
                        return;
                      }
                    } else {
                      showToast('Password isn\'t strong enough');
                      flag = false;
                      return;
                    }
                  } else {
                    showToast('Password length should be at least 6');
                    flag = false;
                    return;
                  }

                  if (flag) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ListExample()));
                  }
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

  bool validateEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool validatePassword(String password) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(password);
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.amberAccent,
        textColor: Colors.white,
        fontSize: 14.0
    );
  }
}
