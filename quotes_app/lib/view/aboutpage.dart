// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About QuotesGram'),
      ),
      body:const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App Logo or Icon (if you have one)
            // Image.asset('assets/app_logo.png', height: 100),

            SizedBox(height: 20),

            // App Title and Description
            Text(
              'QuotesGram \n Your Daily Dose of Inspiration',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'QuotesGram is your go-to app for finding daily inspiration, motivation, and wisdom. Our extensive collection of quotes covers various topics to uplift and empower you. Whether you seek motivation, wisdom, or a touch of positivity, our app curates a diverse collection of quotes that cater to all aspects of life.',
              textAlign: TextAlign.center,
              style: TextStyle(wordSpacing: 20,height: 1.5),
            ),

            SizedBox(height: 40),

            // App Version
            Text(
              'Version: 1.0.0', // Replace with your app's version
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // Developer Information
            Text(
              'Developed by Ranjeet Shrestha', // Replace with your name or company name
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('shrestharanjit2014@gmail.com'), // Replace with your contact information

            SizedBox(height: 20),

            // Additional Information or Acknowledgments
            Text(
              'Special thanks to our users for their continuous support.',
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
