import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/order/order.dart';
import 'package:flutter_app_coffee/stores/store.dart';
import 'package:flutter_app_coffee/user/user.dart';
import 'package:flutter_app_coffee/styles.dart';


import 'home.dart';
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Order(),
    Store(),
    User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Styles.colorTheme,), title: Text("Tin tức",style: TextStyle(color: Styles.colorTheme),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.motorcycle,color: Styles.colorTheme,), title: Text("Đặt hàng",style: TextStyle(color: Styles.colorTheme),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.store,color: Styles.colorTheme,), title: Text("Cửa hàng",style: TextStyle(color: Styles.colorTheme),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.people,color: Styles.colorTheme,), title: Text("Tài khoản",style: TextStyle(color: Styles.colorTheme),)),

          ]),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
