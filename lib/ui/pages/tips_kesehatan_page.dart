import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';
import 'package:padiku/ui/pages/pemupukan_page.dart';
import 'package:padiku/ui/pages/pengairan_page.dart';
import 'package:padiku/ui/pages/penjarangan_page.dart';
import 'package:padiku/ui/pages/penyiangan_page.dart';
import 'package:padiku/ui/pages/waktu_page.dart';

class Kesehatan extends StatelessWidget {
  const Kesehatan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EAE98),
      appBar: AppBar(
        title: Text("Tips menjaga Kesehatan Padi"),
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
            ),
          
          
          SizedBox(height: 70,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Penjarangan dan Penyulaman Padi Sawah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
                ],
              ),
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
            ),
            onTap: () => {Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Penjarangan ()),
                          )
                          },
          ),
          
          SizedBox(height: 30,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Penyiangan Padi Sawah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
                ],
              ),
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
            ),
            onTap: () => {Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Penyiangan ()),
                          )},
          ),
          SizedBox(height: 30,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pengairan Padi Sawah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
                ],
              ),
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
            ),
            onTap: () => {Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Pengairan ()),
                          )},
          ),
          SizedBox(height: 30,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pemupukan Padi Sawah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
                ],
              ),
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
            ),
            onTap: () => {Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Pemupukan ()),
                          )},
          ),
          SizedBox(height: 30,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Waktu Penyemprotan Padi Sawah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
                ],
              ),
              decoration: BoxDecoration(
                
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
            ),
            onTap: () => {Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Waktu ()),
                          )},
          ),
        ]),
      ),
    );
  }
}
