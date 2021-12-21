import 'package:flutter/material.dart';
import 'package:news_project/Authenticate/create_accout.dart';
import 'package:news_project/home_page.dart';

class InputFields extends StatelessWidget {
  const InputFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _namefield = new TextEditingController();
    TextEditingController _pswdfield = new TextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            TextField(
              controller: _namefield,
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _pswdfield,
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
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CreateAccount()));
              },
              child: Text('Create an Accout!'),
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
