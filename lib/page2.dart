import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
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
