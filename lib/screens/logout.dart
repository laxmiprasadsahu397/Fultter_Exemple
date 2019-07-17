import 'package:flutter/material.dart';

import 'home.dart';


class LogOutPage extends StatelessWidget {
const LogOutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
    //           Navigator.push( context,
    // MaterialPageRoute(builder: (context) => TabBarPage()),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),);
            },
            child: Text("LogOut",
                textAlign: TextAlign.center,
                style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );
        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
          loginButon,
              SizedBox(
                  height: 15.0,
                  )
        ],
                ),
              ),
            ),
          ),
        );
  }
}