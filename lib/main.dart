import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyDrawer());
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: const Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
               Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(width: 100,),
                  Text("Home"),
                ],
               )
              ],
            ),
          ),
          body: Builder(
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                      leading: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  ))
                ],
              );
            },
          )),
    );
  }
}
