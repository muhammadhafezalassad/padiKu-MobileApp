import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:padiku/analisis.dart';
import 'package:padiku/shared/theme.dart';
import 'output_model.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {

  File? image;
  String? message = "";

  uploadImage() async {
    final request = http.MultipartRequest(
        "POST", Uri.parse("https://6cd9-182-3-8-212.ap.ngrok.io/upload"));
    final headers = {"Content-type": "multipart/form-data"};
    request.files.add(http.MultipartFile(
        'image', image!.readAsBytes().asStream(), image!.lengthSync(),
        filename: image!.path.split("/").last));

    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);

    Fluttertoast.showToast(msg: "Analisis Selesai");
    //final resJson = jsonDecode(res.body);
    //message = resJson['message'];

    setState(() {});
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      final imageTemprorary = File(image.path);
      setState(() {
        this.image = imageTemprorary;
      });
    } on PlatformException {
      rethrow;
    }
  }

  Future cameraImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        return;
      }

      final imageTemprorary = File(image.path);
      setState(() {
        this.image = imageTemprorary;
      });
    } on PlatformException {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kDarkColor,
      body: SafeArea(
          child: Stack(
        children: [
          image != null
              ? Container(
                  height: 520,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffffffff),
                  child: Image.file(
                    image!,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 350),
                  child: Center(
                    child: Text(
                      "Belum Ada Gambar",
                      style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 14,
                          color: Color(0xff364715)),
                    ),
                  ),
                ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 460,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Instruksi Penggunaan',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: kBlackColor),
                  ),
                  Text(
                    DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                    style: TextStyle(
                        fontFamily: 'PoppinsRegular',
                        fontSize: 14,
                        color: kBlackColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/text.png')),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: RaisedButton(
                          child: Image(image: AssetImage('assets/galery.png')),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: kPrimeColor,
                          onPressed: () {
                            pickImage();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        child: RaisedButton(
                          child: Text(
                            'Ambil Gambar',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Color(0xffffffff)),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: kPrimeColor,
                          onPressed: () {
                            cameraImage();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: RaisedButton(
                          child: Image(image: AssetImage('assets/upload.png')),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: kPrimeColor,
                          onPressed: () {
                            uploadImage();
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: RaisedButton(
                      child: Text(
                        'Hasil Analisis',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xffffffff)),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: kPrimeColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new HasilAnalisis()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class InformasiCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  const InformasiCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgUrl,
          width: 60,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
            ),
          ],
        )
      ],
    );
  }
}