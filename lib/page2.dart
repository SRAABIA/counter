import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  static const String id = 'page2';
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Go back 💀'))
        ),
      );
  }
}
