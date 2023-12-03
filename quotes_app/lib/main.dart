import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:quotes_app/category/spiritual.dart';
import 'package:quotes_app/quotes_home.dart';

// import 'data/data.dart';
// import 'data/display.dart';


// import 'category/motivational.dart';
// import 'category/spiritual.dart';
// import 'example.dart';

// import 'example.dart';
// import 'category/motivational.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
     
      QuotesApp(),
      // Motivational(),
      //  Spiritual(),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Categorized Data Example'),
//       ),
//       body: CategorizedDataList(categorizedData: categorizedData),
//     ),
//   ));
// }