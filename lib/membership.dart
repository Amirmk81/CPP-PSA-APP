import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Membership extends StatefulWidget {
  @override
  _MembershipState createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membership'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://www.thediaryofanomad.com/wp-content/uploads/2020/07/most-beautiful-places-in-iran-itinerary-golestan-palace-tehran-4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              Text(
                'Semesterly membership is \$30: ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.lightGreenAccent),
              ),
              SizedBox(height: 30),
              Text(
                'Please select a payment method:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.white),
              ),
              SizedBox(height: 45),
              ElevatedButton(
                onPressed: () async {
                  const url = 'https://venmo.com/u/CPP_PSA';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print('Could not launch $url');
                  }
                },
                child: Text(
                  'Venmo your membership fee',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
