import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey.shade700,
            ),
            Text(
              'Name',
              style: TextStyle(
                  fontSize: 16.0, color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Md. Rejaul Karim',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('rktuhinbd@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                      letterSpacing: 1.0,
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('01841752600',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                      letterSpacing: 1.0,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
