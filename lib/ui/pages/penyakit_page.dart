import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';
import 'package:padiku/ui/pages/blast_page.dart';
import 'package:padiku/ui/pages/hamaputih_page.dart';
import 'package:padiku/ui/pages/hawardaun_page.dart';
import 'package:padiku/ui/pages/penjarangan_page.dart';
import 'package:padiku/ui/pages/tungro_page.dart';

class Penyakit extends StatelessWidget {
  const Penyakit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EAE98),
      appBar: AppBar(
        title: Text("Penyakit - Penyakit Padi"),
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
                  Text("Blast", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Blast()),
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
                  Text("Hawar Daun Bakteri", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Hdb()),)},
          ),
          SizedBox(height: 30,),
          InkWell(
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tungro", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Tungro()),
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
                  Text("Hama Putih", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), )
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
                                builder: (context) => new Hama()),
                          )},
          ),
          SizedBox(height: 30,),
         
        ]),
      ),
    );
  }
}
