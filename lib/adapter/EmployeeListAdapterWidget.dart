import 'package:flutter/material.dart';

import '../model/Employees.dart';

class EmployeeListAdapterWidget extends StatelessWidget {
  final Employees employee;
  final Function delete;

  EmployeeListAdapterWidget({this.employee, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(employee.name,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(color: Colors.grey.shade900, fontSize: 14)),
                  Text(employee.phone,
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12)),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(employee.designation,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12)),
                  Text(employee.email,
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(employee.dob,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12)),
                  IconButton(
                      onPressed: delete,
                      icon: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
