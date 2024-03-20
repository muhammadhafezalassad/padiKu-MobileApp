import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';

class Pemupukan extends StatelessWidget {
  const Pemupukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1EAE98),
      appBar: AppBar(
        title: Text("Tips Kesehatan"),
        backgroundColor: Color(0xff1EAE98),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
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
            Container(
              padding: const EdgeInsets.only(
                left: 45,
                right: 45,
                bottom: 50,
              ),
              margin: const EdgeInsets.only(top: 45, bottom: 40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Pemupukan Padi Sawah',
                      style: blackStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      '1. Sehari setelah tanam, berikan NPK pelangi 100 persen. \n2. Umur 7 hari berikutnya, berikan urea 30 persen. \n3. Umur 20 hari setelah tanam, berikan urea 40 persen. \n4. Umur 30 hari setelah tanam, berikan urea 30 persen sisanya. \n5. Bagi yang menggunakan BWD, aturannya adalah sehari setelah tanam berikan NPK Pelangi 100 persen. \n6. Umur 7 hari setelah tanam, silakan test dengan BWD, lalu lakukan seperti cara (di atas) jika hasil test BWD belum sesuai harapan.',
                      style: blackStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
