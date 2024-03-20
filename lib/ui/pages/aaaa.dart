import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:padiku/shared/theme.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 700,
              width: 400,
              child: CameraPreview(controller),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Center(
                child: Container(
                  height: 50,
                  width: 220,
                  margin: EdgeInsets.only(bottom: 10),
                  //alignment: Alignment(0.0, -1.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: kPrimeColor,
                    onPressed: () async {
                      pictureFile = await controller.takePicture();
                      setState(() {});
                    },
                    child: Center(
                      child: Text(
                        'Ambil Gambar',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 14,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
              )),
        ),
        if (pictureFile != null)
          Image.network(
            pictureFile!.path,
            height: 200,
          )
        //Android/iOS
        // Image.file(File(pictureFile!.path)))
      ],
    );
  }
}