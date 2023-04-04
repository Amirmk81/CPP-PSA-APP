import 'dart:async';
import 'package:flutter/material.dart';
import 'package:finalproject/aboutus.dart';
import 'package:finalproject/events.dart';
import 'package:finalproject/membership.dart';
import 'dart:ui';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persian Students Association',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',


        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(

            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'سلام به اپ دانشجویان ایرانی کل پالی خوش آمدید',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Montserrat'),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set scaffold background color to transparent
      body: Container( // Use Container to set background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/IMG_6789.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Events()),
                  );
                },
                child: Text('Events'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Membership()),
                  );
                },
                child: Text('Membership'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  AboutUs()),
                  );
                },
                child: Text('About Us'),

              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/circularlogo.png',
                height: 150,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
