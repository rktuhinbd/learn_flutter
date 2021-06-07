import 'package:flutter/material.dart';

import 'Employees.dart';

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

  Widget employeeCard(employee) {
    return EmployeeCardWidget(employee);
  }

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
        children: employees.map((employee) => employeeCard(employee)).toList(),
      ),
    );
  }
}

class EmployeeCardWidget extends StatelessWidget {
  final Employees employee;

  EmployeeCardWidget(this.employee);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(employee.name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey.shade900, fontSize: 14)),
                  ),
                  Expanded(
                    child: Text(employee.phone,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 12)),
                  )
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: Text(employee.designation,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 12)),
                  ),
                  Expanded(
                    child: Text(employee.email,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 12)),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(employee.dob,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 12))
            ],
          ),
        ));
  }
}
