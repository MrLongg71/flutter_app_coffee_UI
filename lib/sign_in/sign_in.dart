import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SignInWidget(),
    );
  }
}

class SignInWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text("Chào bạn,",
              style: TextStyle(color: Colors.black, fontSize: 30.0),),
            SizedBox(
              height: 10.0,
            ),
            Text("Nhập số điện thoại để tiếp tục",
              style: TextStyle(color: Colors.black, fontSize: 15.0),),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: (width / 10) * 2,
                  height: 45.0,

                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/icon_flag_vn.png',
                          height: 30.0,
                          width: 30.0,),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  height: 45.0,
                  width: (width / 10) * 6.5,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Số điện thoại',
                    ),
                  ),
                ),

              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30.0),
              child: Column(
                children: <Widget>[
                  Text("Hoặc đăng nhập bằng",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                            color: Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            textColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Facebook"),
                            ),
                            onPressed: () {

                            }),
                        RaisedButton(
                            color: Colors.yellow[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            textColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 30.0,right: 30.0),
                              child: Text("Email"),
                            ),
                            onPressed: () {

                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Text("Bỏ qua ",style: TextStyle(color: Colors.blue[900],fontSize: 15.0),)),
                  ),

                ],
              ),

            ),
          ]
          ,
        ),

    );
  }
}
