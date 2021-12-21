import 'package:flutter/material.dart';
import 'package:news_project/Authenticate/inputcreatefields.dart';
import 'backgroundimage.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                  child: InputcreateFields(),
                )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
