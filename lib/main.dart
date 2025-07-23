import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text(x.toString(), style: TextStyle(fontSize: 50)),
          ),
          appBar: AppBar(
            title: Text('Counter App', style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x++;
              print(x.toString());
              setState(() {

              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
