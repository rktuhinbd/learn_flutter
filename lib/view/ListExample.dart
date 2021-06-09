import 'package:flutter/material.dart';

import '../adapter/EmployeeListAdapterWidget.dart';
import '../model/Employees.dart';

class ListExample extends StatefulWidget {
  @override
  ListExampleState createState() => ListExampleState();
}

class ListExampleState extends State<ListExample> {
  List<Employees> employees = [
    Employees(
        name: 'Md. Rejaul Karim',
        designation: 'Asst. Software Engineer',
        phone: '01841752600',
        email: 'rejaul.karim@mislbd.com',
        dob: '15-07-1994'),
    Employees(
        name: 'Amirul Islam',
        designation: 'Asst. Software Engineer',
        phone: '01724835935',
        email: 'amirul@mislbd.com',
        dob: '21-03-1992'),
    Employees(
        name: 'A S M Tarek',
        designation: 'Asst. Software Engineer',
        phone: '01725839273',
        email: 'asmtarek@mislbd.com',
        dob: '23-04-1994')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey.shade900, //change your color here
        ),
        backgroundColor: Colors.amberAccent,
        title: Text(
          'List of employees',
          style: TextStyle(fontSize: 20, letterSpacing: 1, color: Colors.black),
        ),
      ),
      body: Column(
        children: employees.map((employee) => EmployeeListAdapterWidget(employee)).toList(),
      ),
    );
  }
}
