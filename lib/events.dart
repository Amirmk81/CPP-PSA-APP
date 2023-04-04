import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<Map<String, String>> _events = const [
  const {
    'title': 'Nowruz',
    'summary': 'Nowruz is the Persian New Year, which is celebrated on the first day of spring. It is a time for renewal, rebirth, and new beginnings.',
    'image': 'assets/images/IMG_8043.jpeg',
  },
  const {
    'title': 'Yalda Night',
    'summary': 'Yalda Night is an ancient Persian festival that celebrates the winter solstice, the longest night of the year. It is a time for family gatherings, storytelling, and feasting.',
    'image': 'https://images.squarespace-cdn.com/content/v1/5d3f96513eaa0c000142d0de/1576545698095-V9Z74KCAO276O8ZX4235/yalda-night-3-1024x768.jpg?format=1000w',
  },
  const {
    'title': 'Off-campus parties',
    'summary': 'Off-campus parties are a great way to meet new people and have fun. Join us for dancing, music, and socializing!',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYCo4t6xS-SRRn-JP5g3Sp-DMNupOOW1cYbQ&usqp=CAU',
  },
  const {
    'title': 'Socials',
    'summary': 'Socials are weekly gatherings for socializing, networking, and making new friends. Join us for food, drinks, and fun!',
    'image': 'assets/images/persian_culture.png',
  },
  const {
    'title': 'Spring Retreat',
    'summary': 'Our Spring retreat happens once a year, it is a 3 year road trip to bring together our students and create a sense of unity amongst them!',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0FUuECNrU9Z2FiMH5TrnADFadrs9ZyUOiZA&usqp=CAU',
  },
];

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/6-tehran-iran-skyline-michael-tompsett.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: _events.length,
          itemBuilder: (BuildContext context, int index) {
            final event = _events[index];
            return Column(
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 80,
                    height: 80,
                    child: event['image']!.startsWith('http')
                        ? Image.network(
                      event['image']!,
                      fit: BoxFit.cover,
                    )
                        : Image.asset(
                      event['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    event['title']!,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  subtitle: Text(
                    event['summary']!,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
              ],
            );
          },
        ),

      ),
    );
  }
}


//'image': 'https://cdn.apartmenttherapy.info/image/upload/v1616097429/k/Design/2021-03/Nowruz-explainer.jpg',
//'image': 'https://surfiran.com/wp-content/uploads/2019/12/yaldaherbs-scaled.jpg',