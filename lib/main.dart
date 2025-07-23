import 'package:counter/counter.dart';
import 'package:counter/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: counter(),
      initialRoute: counter.id,
      routes: {
        counter.id: (context) => counter(),
        page2.id: (context) => page2(),
      },
    );
  }
}
