import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  static const String id = 'page2';
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body: Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,item){
              return ListTile(
                leading: Icon(Icons.add_a_photo),
                title: Text('Item $item'),
                subtitle: Text('Subtitle $item'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigator.pop(context);
                }
              );
            }
            )
      )
    );
  }
}
