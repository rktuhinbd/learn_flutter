import 'package:flutter/material.dart';

import '../model/Employees.dart';

class EmployeeListAdapterWidget extends StatelessWidget {
  final Employees employee;

  EmployeeListAdapterWidget(this.employee);

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
