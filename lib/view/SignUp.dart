import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/utils/utils.dart';

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
                letterSpacing: 1.25, fontSize: 24, color: Colors.grey.shade900),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: nameController,
            // onChanged: (newText) {
            //   name = newText;
            // },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                hintText: 'Full Name',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            controller: emailController,
            // onChanged: (newText) {
            //   email = newText;
            // },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email Address',
                labelText: 'Email Address',
                suffixText: '@gmail.com',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            obscureText: true,
            controller: passwordController,
            // onChanged: (newText) {
            //   password = newText;
            // },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            obscureText: true,
            controller: confirmPasswordController,
            // onChanged: (newText) {
            //   confirmPassword = newText;
            // },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
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
}
