import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';

class Pengairan extends StatelessWidget {
  const Pengairan({Key? key}) : super(key: key);

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
                      'Pengairan Padi Sawah',
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
                      'Syarat penggunaan air di sawah: \n1. Air harus bisa menggenangi sawah dengan merata.\n2. Lubang pemasukkan dan pembuangan air letaknya bersebrangan agar air merata di seluruh lahan. \n3. Air mengalir membawa lumpur dan kotoran yang diendapkan pada petak sawah. Kotoran berfungsi sebagai pupuk. \n4. Setelah tanam, sawah dikeringkan 2-3 hari kemudian diairi kembali sedikit demi sedikit. Sejak padi berumur 8 hari genangan air mencapai 5 cm. Pada waktu padi berumur 8-45 hari kedalaman air ditingkatkan menjadi 10 sampai dengan 20 cm. Pada waktu padi mulai berbulir, penggenangan sudah mencapai 20-25 cm, pada waktu padi menguning ketinggian air dikurangi sedikit-demi sedikit.',
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
