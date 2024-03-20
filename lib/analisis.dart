import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:padiku/ui/pages/output_camera.dart';
import 'package:padiku/ui/pages/output_model.dart';

class HasilAnalisis extends StatefulWidget {
  const HasilAnalisis({Key? key}) : super(key: key);

  @override
  State<HasilAnalisis> createState() => _HasilAnalisisState();
}

class _HasilAnalisisState extends State<HasilAnalisis> {
  OutputModel hasil = OutputModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("output")
        .doc("hasil")
        .get()
        .then((value) {
      this.hasil= OutputModel.fromMap(value.data());
      print(hasil);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: SizedBox(
                    height: 50,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Gallery()),
                          );
                        },
                        child: Image(image: AssetImage('assets/back.png'))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height:400,
              child: Image(image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/padiku-458e4.appspot.com/o/contours.png?alt=media&token=2e0529cd-e983-4b1f-ab26-5e7c84aa7aa3'),),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hasil Analisis',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff505410),
                      fontSize: 18),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Jumlah Titik:  ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff505410),
                            fontSize: 16)),
                    Text('${hasil.titik}',
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            color: Color(0xff505410),
                            fontSize: 16)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Keterangan:  ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff505410),
                            fontSize: 16)),
                    Text('${hasil.keterangan}',
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            color: Color(0xff505410),
                            fontSize: 16)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}