import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/utils/utils.dart';
import 'package:validators/validators.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

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

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: formKey,
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
              TextFormField(
                controller: nameController,
                onChanged: (value) {
                  formKey.currentState.validate();
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter full name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() => name = value),
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
              TextFormField(
                controller: emailController,
                onChanged: (value) {
                  formKey.currentState.validate();
                },
                validator: (val) => !isEmail(val) ? "Invalid Email" : null,
                onSaved: (value) => setState(() => email = value),
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
              TextFormField(
                obscureText: true,
                controller: passwordController,
                onChanged: (value) {
                  formKey.currentState.validate();
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter password';
                  } else if (value.length < 6) {
                    return 'Password can\'t be less than 6 characters';
                  } else if (validatePassword(value)) {
                    return 'Please provide a strong password';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => setState(() => password = value),
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
              TextFormField(
                obscureText: true,
                controller: confirmPasswordController,
                onSaved: (value) => setState(() => confirmPassword = value),
                onChanged: (value) {
                  formKey.currentState.validate();
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter password';
                  } else if (value.length < 6) {
                    return 'Password can\'t be less than 6 characters';
                  } else if (validatePassword(value)) {
                    return 'Please provide a strong password';
                  } else if (confirmPassword != password) {
                    return 'Confirm password not matched';
                  } else {
                    return null;
                  }
                },
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

                      // if (flag) {
                      //   Navigator.of(context).push(MaterialPageRoute(
                      //       builder: (context) => ListExample()));
                      // }
                    },
                    color: Colors.amberAccent,
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
