import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.theculturetrip.com/wp-content/uploads/2022/01/2ah4fa8_--mehmeto-alamy-stock-photo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(

              child: Image.asset(
                'assets/images/persian_culture.png',

                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'We are the Persian Students Association at California State Polytechnic University, Pomona (CPP), dedicated to promoting and celebrating Persian culture and heritage. Our goal is to provide a platform for students to connect with one another, share their experiences and celebrate the richness and diversity of Persian culture. Follow us on our socials to stay tuned!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                const url = 'https://mybar.cpp.edu/actioncenter/organization/cpppsa';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  print('Could not launch $url');
                }
              },
              child: Text('Join Us'),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/pic.png'),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/cpp_psa/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                ),


                IconButton(
                  icon: Icon(Icons.discord),
                  onPressed: () async {
                    const url = 'https://discord.gg/QYNhPccY99';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
