import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/sign_in/sign_in.dart';
import 'package:flutter_app_coffee/splashsceen.dart';
import 'package:flutter_app_coffee/styles.dart';

import 'home/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Styles.colorTheme,
      ),
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(context) => SplashScreen(),
        '/home':(context) => BottomNavigation(),
        '/page-view':(context) => PageViewSplash(),
        '/sign-in':(context) => SignIn(),

      },
    );
  }
}




