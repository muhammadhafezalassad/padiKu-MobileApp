import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';
import 'package:padiku/ui/pages/penyakit_page.dart';
import 'package:padiku/ui/pages/tips_kesehatan_page.dart';
import 'package:padiku/ui/pages/scanning_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'output_camera.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.png'),
              ),
            ),
            child: Column(children: [
              Container(
                child: SizedBox(
                  height: 130,
                  width: 250,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, right: 10),
                    alignment: Alignment.topCenter,
                    child: const Image(
                        image: AssetImage('assets/white_title.png')),
                  ),
                ),
              ),
              Text(
                'Selamat Datang',
                style: whiteStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '"Kenali Penyakit Daun Padimu"',
                style: whiteStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 50,
          ),

          Center(
            child: Container(
              height: 115,
              width: 175,
              margin: EdgeInsets.only(bottom: 5),
              //alignment: Alignment(0.0, -1.0),
              child: RaisedButton(
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: kPrimeColor,
                onPressed: () async {
                    await availableCameras().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Gallery(),
                        ),
                      ),
                    );
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        'assets/scan.png',
                      ),
                    ), 
                  ],
                ),
              ),
            ),
          ),
          Text(
                'Cek Padiku',
                style: blackStyle.copyWith(fontWeight: FontWeight.bold),
              ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 115,
              width: 175,
              margin: EdgeInsets.only(bottom: 5),
              //alignment: Alignment(0.0, -1.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: kPrimeColor,
                 onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Kesehatan()),
                          );
                        },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        'assets/tips.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
                'Tips Kesehatan Padi',
                style: blackStyle.copyWith(fontWeight: FontWeight.bold),
              ),
          const SizedBox(
            height: 15,
          ),

          Center(
            child: Container(
              height: 115,
              width: 175,
              margin: EdgeInsets.only(bottom: 5),
              //alignment: Alignment(0.0, -1.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: kPrimeColor,
                onPressed: () {
                  Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Penyakit()),
                          );
                          },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        'assets/penyakit.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),Text(
                'Informasi Penyakit Padi',
                style: blackStyle.copyWith(fontWeight: FontWeight.bold),
              ),
        ],
      ),
    );
  }
}
