// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MyPage(),
    );
  } //
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'SILVER SPACE',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('Shopping cart button is clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search button is clicked');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/IMG_9689.JPG'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/5555.png'),
                    backgroundColor: Colors.white,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/images/5555.png'),
                  //   backgroundColor: Colors.white,
                  // )
                ],
                accountName: Text('silver_zz'),
                accountEmail: Text('liisa9601@naver.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(40.0),
                  //     bottomRight: Radius.circular(40.0))
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () {
                  print('Setting is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Q & A'),
                onTap: () {
                  print('Q & A is clicked');
                },
                trailing: Icon(Icons.add),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/IMG_9689.JPG'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'SILVER_ZZ',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
