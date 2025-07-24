import 'package:counter/page2.dart';
import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  static const String id = 'counter';
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(x.toString(), style: TextStyle(fontSize: 50)),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  x = 0;
                  setState(() {});
                },
                child: Icon(
                  Icons.downloading_outlined,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> page2()));
                  Navigator.pushNamed(context, page2.id);
                },
                child: Text(
                  'Page 2',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Counter App',
            style: TextStyle(fontSize: 25, color: Colors.black45),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              // DrawerHeader(child: Text('Drawer')),
              UserAccountsDrawerHeader(
                accountName: Text('SRAABIA'),
                accountEmail: Text('sraabiahh@gmail.com'),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/5488937/pexels-photo-5488937.jpeg',
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, counter.id);
                },
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text('Page 2'),
                onTap: () {
                  Navigator.pushNamed(context, page2.id);
                },

                ),
              ]
              ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            // print(x.toString());
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
