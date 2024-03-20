import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';
import 'package:padiku/ui/pages/penjarangan_page.dart';

class Scanning extends StatelessWidget {
  const Scanning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EAE98),
      appBar: AppBar(
        title: Text("Scanning Padi"),
        backgroundColor: Color(0xff1EAE98),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10),
              child: Image(image: AssetImage('assets/white_title.png')),
            ),
              ],
            ), ]),
      ),
    );
  }
}