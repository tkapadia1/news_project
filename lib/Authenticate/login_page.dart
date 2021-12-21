import 'package:flutter/material.dart';
import 'package:news_project/Authenticate/input_fields.dart';
import 'backgroundimage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 200),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: InputFields(),
              )),
            ],
          )),
        )
      ],
    );
  }
}
