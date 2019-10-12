// import 'package:flutter/material.dart';
// import './homepage.dart';
// import './upload.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Speak Up',
//       home: new Upload()
//       ); 
//   }
// }

import 'package:flutter/material.dart';
import './homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Speak Up',
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.red,
          brightness: Brightness.dark),
    );
  }
}
