import 'package:flutter/material.dart';



class MyApps extends StatelessWidget {
  final List<Map<String, dynamic>> quotes = [
    {
      'id': 1,
      'title': 'Every war starts with misconception',
      'category': 'motivational',
    },
    {
      'id': 2,
      'title': 'The journey of a thousand miles begins with a single step',
      'category': 'motivational',
    },
    {
      'id': 3,
      'title': 'In the middle of every difficulty lies opportunity',
      'category': 'motivational',
    },
    {
      'id': 4,
      'title': 'Success is not final, failure is not fatal: It is the courage to continue that counts',
      'category': 'motivational',
    },
    {
      'id': 5,
      'title': 'The future belongs to those who believe in the beauty of their dreams',
      'category': 'motivational',
    },
    {
      'id': 6,
      'title': 'Be yourself; everyone else is already taken',
      'category': 'inspirational',
    },
    {
      'id': 7,
      'title': 'Believe you can and you\'re halfway there',
      'category': 'inspirational',
    },
    {
      'id': 8,
      'title': 'The only way to do great work is to love what you do',
      'category': 'angry',
    },
    {
      'id': 9,
      'title': 'The secret of getting ahead is getting started',
      'category': 'sad',
    },
    {
      'id': 10,
      'title': 'It always seems impossible until it\'s done',
      'category': 'love',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quotes'),
        ),
        body: ListView.builder(
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            final quote = quotes[index];
            return ListTile(
              title: Text(quote['title']),
              subtitle: Text('Category: ${quote['category']}'),
            );
          },
        ),
      ),
    );
  }
}
