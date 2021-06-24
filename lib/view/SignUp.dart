import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/utils/utils.dart';
import 'package:learn_flutter/utils/validation.dart';

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
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    String name;
    String email;
    String phone;
    String password;
    String confirmPassword;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.0, 48.0, 24.0, 0),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                validator: (value) => validateName(value),
                onChanged: (value) => {name = value},
                onSaved: (String value) {
                  name = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    labelText: 'Full Name',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) => validateEmail(value),
                onChanged: (value) => {email = value},
                onSaved: (String value) {
                  email = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email Address',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                validator: (value) => validatePhone(value),
                onChanged: (value) => {phone = value},
                onSaved: (String value) {
                  phone = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Phone Number',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0)),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onChanged: (value) => {password = value},
                onSaved: (String value) {
                  password = value;
                },
                validator: (value) => validatePassword(value, null, false),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
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
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                onChanged: (value) => {confirmPassword = value},
                onSaved: (String value) {
                  confirmPassword = value;
                },
                validator: (value) => validatePassword(value, password, true),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
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
                      print("Name: " + nameController.text);
                      print("Email: " + emailController.text);
                      print("Phone: " + phoneController.text);
                      print("Password 1: " + passwordController.text);
                      print("Password 2: " + confirmPasswordController.text);
                      if (formKey.currentState.validate()) {
                        showToast("Validation Completed.");
                      } else
                        showToast("Validation Incomplete!");
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
