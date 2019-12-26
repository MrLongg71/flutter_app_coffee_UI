import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/styles.dart';
class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.colorTheme,
        title: Text("Đăng nhập"),
        centerTitle: false,
        leading: Icon(Icons.people),
      ),
      body: USerBody(),
      backgroundColor: Colors.grey[300],
    );
  }
}
class USerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.stars),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("The Coffee House Rewards",style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.people),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Thông tin tài khoản",style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.queue_music),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Nhạc đang phát",style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.history),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Lịch sử",style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.payment),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Thanh toán",style: TextStyle(fontSize: 15),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

