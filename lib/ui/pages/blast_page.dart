import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';
import 'package:padiku/ui/pages/cblast_page.dart';
import 'package:padiku/ui/pages/gblast_page.dart';
import 'package:padiku/ui/pages/pblast_Page.dart';
import 'package:padiku/ui/pages/penjarangan_page.dart';

class Blast extends StatelessWidget {
  const Blast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EAE98),
      appBar: AppBar(
        title: Text("Blast"),
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
                  Text("Pengertian", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Pblast()),
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
                  Text("Gejala", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Gblast()),
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
                  Text("Cara Mengatasi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Cblast()),
                          )},
          ),
          SizedBox(height: 30,),
         
        ]),
      ),
    );
  }
}
