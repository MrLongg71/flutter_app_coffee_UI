import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/styles.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: IconButton(
            icon: Icon(
              Icons.motorcycle,
              color: Styles.colorTheme,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Styles.colorTheme,
              ),
              onPressed: () {}),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Giao hàng đến",
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Sai Gon Tech",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        bottom: TabBar(
            indicatorColor: Styles.colorTheme,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: [
              Tab(
                text: "Phổ biến",
              ),
              Tab(
                text: "Thức uống",
              ),
              Tab(
                text: "Đồ ăn",
              ),
            ]),
      ),
      body: TabBarView(
        children: [
          OrderHome(),
          Drink(),
          Food(),
        ],
        controller: _tabController,
      ),
    );
  }
}

class OrderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Món mới",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              ItemGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

class Drink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Món mới",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              ItemGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Món mới",
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              ItemGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemGridView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Future<Widget>  CustomDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset('assets/images/food1.jpg',height: 60.0,width: 50.0,fit: BoxFit.cover,)),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Cold Brew Sữa tươi Macchiato",style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("50.000 đ"),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.content_copy),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("Yêu thích"),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Size"),
                  ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Radio(value: 1, groupValue: null, onChanged: null),
                    Text("Vừa"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.grey,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Row(
                      children: <Widget>[
                        Radio(value: 1, groupValue: null, onChanged: null),
                        Text("Lớn"),
                      ],
                    ),
                    Text("+ 5.000 đ"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Giới thiệu món"),
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Matcha thanh nhẫn được nhân đôi vị giác, với lớp đá xay chocolate đăng đắng cùng vị hạnh nhân thơm lừng. Xuyến nhẹ thêm nét ngọt bùi beo béo của lớp kem và hạt hạnh nhân ở phía trên. Hòa vị miễn chê và gây thương nhớ vô cùng."),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: null),
                      Text("1"),
                      IconButton(icon: Icon(Icons.add_circle_outline,color: Styles.colorTheme,), onPressed: null),

                    ],
                  ),
                  RaisedButton(
                    color: Styles.colorTheme,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10.0),
                    ),
                      child: Text("50.000 d"),
                      onPressed: (){

                  }),

                ],
              )

            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      childAspectRatio: 9 / 16,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            CustomDialog(context);
          },
          child: Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/food7.jpg',
                      width: MediaQuery.of(context).size.width / 2,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Chocolate Cherry Hạnh Nhân Đá Xay",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("59.000 đ"),
                        Icon(
                          Icons.add_circle_outline,
                          color: Styles.colorTheme,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/images/food7.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chocolate Cherry Hạnh Nhân Đá Xay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("59.000 đ"),
                      Icon(
                        Icons.add_circle_outline,
                        color: Styles.colorTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}


//
