import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/order/order.dart';
import 'package:flutter_app_coffee/sign_in/sign_in.dart';
import 'package:flutter_app_coffee/stores/store.dart';
import 'package:flutter_app_coffee/styles.dart';
import 'package:flutter_app_coffee/user/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: false,
        title: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Styles.colorTheme)),
            textColor: Styles.colorTheme,
            child: Text("Đăng nhập"),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/sign-in');
            }),
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.people,
              color: Styles.colorTheme,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert, color: Styles.colorTheme),
              onPressed: () {}),
        ],
      ),
      body: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            WidgetMenu(),
            PlayMusic(),
            WhatNewsWidget(),
            WhatNewsWidget(),
            WhatNewsWidget(),
          ],
        ),
      ),
    );
  }
}

class WidgetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/icon_smartphone.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                Text("Tích điểm"),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/icon_moto.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                Text("Tích điểm"),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/icon_ticket.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                Text("Tích điểm"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlayMusic extends StatefulWidget {
  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Nhạc đang phát",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    AnimatedBuilder(
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/music.jpg',
                          height: 80,
                          width: 80,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      animation: animationController,
                      builder: (BuildContext context, Widget _widget) {
                        return Transform.rotate(
                          angle: animationController.value * 6.3,
                          child: _widget,
                        );
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      height: 80.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Oh Santa!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mariah Carey",
                            style: TextStyle(
                                color: Styles.colorTheme,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text("Now playing"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WhatNewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "What's News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.details)
            ],
          ),
          Container(
            height: 370,
            margin: EdgeInsets.only(top: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ListItem(),
                ListItem(),
                ListItem(),
                ListItem(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class ListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 10) * 7,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/food1.jpg',
                height: 150.0,
                width: (MediaQuery.of(context).size.width / 10) * 7,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Nhà có quà Noel - 1 Cho bạn,1 Để Yêu Thương",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                      "Khác với cách thưởng thức Macchiato thông thường. Với thức uống này, hãy thử khuấy đều để cho vị đắng, vị ngọt hòa quyện lại với nhau và nhấp liền 1 ngụm để cảm nhận hết hương vị cà phê có phần nhẹ nhàng này nhé!"),
                  SizedBox(
                    height: 5.0,
                  ),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Styles.colorTheme)),
                      textColor: Styles.colorTheme,
                      child: Text("Đặt hàng"),
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
