import 'package:flutter/material.dart';
import 'package:news_project/Authenticate/login_page.dart';

class InputcreateFields extends StatelessWidget {
  const InputcreateFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 35),
            TextField(
              //controller: ,
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 19),
            TextField(
              //controller: ,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              //controller: ,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
              ),
            ),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create Account'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Text('Already have an Account!'),
            ),
            Divider(),
            Text("Or sign in with"),
            SizedBox(height: 20),
            Center(
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.facebook, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: Colors.blue, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.g_mobiledata, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: Colors.red, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
