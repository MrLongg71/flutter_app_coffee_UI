import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).pushNamed('/page-view'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogoSplash(),
    );
  }
}

class LogoSplash extends StatefulWidget {
  @override
  _LogoSplashState createState() => _LogoSplashState();
}

class _LogoSplashState extends State<LogoSplash> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

class PageViewSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepPurple,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Styles.colorTheme)),
                    textColor: Styles.colorTheme,
                    child: Text("Bỏ qua"),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/sign-in');
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
