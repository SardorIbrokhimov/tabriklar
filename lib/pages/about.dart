import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tabriklar/pages/home_page.dart';

class About extends StatefulWidget {
  static const String id = "about";

  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("About Creator"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Container(
        child: Text("Creator:\nIbrokhimov S\nTelegram:\n@Ibrokhimov_Sardor",style: TextStyle(fontSize: 25,color: Colors.blueAccent),),
      ),
    );
  }
}
