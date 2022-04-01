import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tabriklar/pages/page1.dart';
import 'package:tabriklar/pages/page2.dart';
import 'package:tabriklar/pages/page3.dart';

import 'about.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final usersPost = TextEditingController();

  String sentences = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Bosh Sahifa"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, About.id);
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(

              accountName: Text(""),
              accountEmail: Text(""),

              decoration: BoxDecoration(

                  image: DecorationImage(

                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHRnKhZrBR9N5xrcZ_XFboy_h5_Mo2Hsl4cA&usqp=CAU"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            ListTile(
              title: Text("Yangi Yil tabrigi"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page1.id);
              },
            ),
            ListTile(
              title: Text("Ramazon tabrigi"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page2.id);
              },
            ),
            ListTile(
              title: Text("Tug'ilgan kun tabrigi"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page3.id);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(

                  child: Text(
                    "Welcome $sentences",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
            TextField(
              controller: usersPost,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter name...",
                  suffixIcon: IconButton(
                    onPressed: () {
                      usersPost.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  sentences = usersPost.text;
                });
              },
              color: Colors.blue,
              child: Text("Done"),
            ),
          ],
        ),
      ),
    );
  }
}
