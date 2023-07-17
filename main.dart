import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: CircleAvatar(
                    radius: 200,
                    // Replace with your image
                    backgroundImage: NetworkImage(
                      'https://s3.amazonaws.com/autoprint/115/cms_images/946/final-1.png',
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Efty Shikder',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'I am Ifti Sikder. I study in Dhaka International University. I have admitted in OSTAD for learning flutter mobile app development skill.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (orientation == Orientation.portrait) ? 3 : 6,
                  children: List.generate(6, (index) {
                    return Container(
                      // Replace with your image
                      child: Image.network(
                        'https://s3.amazonaws.com/autoprint/115/cms_images/946/final-1.png',
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
