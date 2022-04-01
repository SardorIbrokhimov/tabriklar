import 'package:flutter/material.dart';

import 'home_page.dart';

class Page1 extends StatefulWidget {
  static const String id = "page1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final usersPost = TextEditingController();
  final usersPost1=TextEditingController();

  String sentences = "";
  String sentences2="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Yangi yil tabrigi"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Text(
                      " $sentences Yangi Yil bayramingiz muborak bo'lsin.Yangi Yil sizga va oilangizga baxt va quvonch olib kelsin\n \n \n\n       Hurmat bilan $sentences2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: usersPost,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kimga...",
                  suffixIcon: IconButton(
                    onPressed: () {
                      usersPost.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
            TextField(
              controller: usersPost1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kimdan...",
                  suffixIcon: IconButton(
                    onPressed: () {
                      usersPost1.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  sentences = usersPost.text;
                  sentences2 = usersPost1.text;
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
