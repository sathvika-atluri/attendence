import 'package:flutter/material.dart';
import 'package:login/firebase_options.dart';
import 'package:login/register.dart';
import 'package:login/slogin.dart';
import 'package:login/adminlogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login/dashboard.dart';
import 'package:login/faculty.dart';
import 'package:login/studentcreate.dart';
import 'package:login/class.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NRIIT'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu icon press
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage1()));
                // Handle "ADMIN" button press
              },
              child: Text(
                'ADMIN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle menu item 1 press
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Handle menu item 2 press
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/b1.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                    // Code to run when the first button is pressed
                  },
                  child: Container(
                    alignment: Alignment.centerLeft, // Align text to the start
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/b4.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Faculty',style: TextStyle(fontSize: 40.0),),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0), // Remove padding
                    fixedSize: Size(400, 200),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

                    // Code to run when the second button is pressed
                  },
                  child: Container(
                    alignment: Alignment.centerLeft, // Align text to the start
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/b3.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Student',style: TextStyle(fontSize: 40.0),),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0), // Remove padding
                    fixedSize: Size(400, 200),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
