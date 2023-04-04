import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title:Text("This is the secoind screen")),
        body: Text("Home page",textScaleFactor: 2,)
    );
  }
}