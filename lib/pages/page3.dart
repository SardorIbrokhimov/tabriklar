import 'package:flutter/material.dart';
import 'package:tabriklar/pages/home_page.dart';
class Page3 extends StatefulWidget {
  static const String id="page3";
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final usersPost = TextEditingController();
  final usersPost1=TextEditingController();

  String sentences = "";
  String sentences2="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Tug'ilgan kun tabrigi"),
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
                      " $sentences Tavallud ayyomingiz qutlug' bo'lsin doimo sog' salomat bo'ling,kelgusi ishlaringizda omad,Allohim bergan umrni mazmunli o'tkazing\n \n \n\n    Hurmat bilan $sentences2",
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
                  hintText: "Enter name...",
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
                  sentences=usersPost.text;
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
