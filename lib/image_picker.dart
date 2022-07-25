import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Camera> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Camera> {
  int _counter = 0;
  var imagePicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          'Camera',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child: imagePicked == null
            ? Center(
                child: Text('no image selected yet'),
              )
            : Image.file(File(imagePicked.path)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickedImage,
        tooltip: 'Increment',
        child: const Icon(Icons.camera),
      ),
    );
  }

  pickedImage() async {
    // ? ot ! null state
    XFile? ImagePicked =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imagePicked = ImagePicked;
    });
  }
}

