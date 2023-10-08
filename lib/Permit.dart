import "dart:io";
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import "Myapp.dart";

class Something extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new CameraAccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Declare {
  static File cameraFile = File("hi");
}

class CameraAccess extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CameraAccessState();
  }
}

class CameraAccessState extends State<CameraAccess> {
  @override
  Widget build(BuildContext context) {
    //display image selected from gallery
    selectFromCamera() async {
      var cam = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        // maxHeight: 50.0,
        // maxWidth: 50.0,
      );
      setState(() {
        Declare.cameraFile = File(cam!.path);
      });
    }

    void nevigat_e() {
      if (Declare.cameraFile != Null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      } else {
        Text("Please select file to nevigate to editing page");
      }
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ickoooo"),
        backgroundColor: Colors.orange,
        actions: <Widget>[Icon(Icons.add_a_photo_outlined)],
      ),
      body: new Builder(
        builder: (BuildContext context) {
          return Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new ElevatedButton(
                    child: new Text('Select Image from Gallery'),
                    onPressed: selectFromCamera
                ),

                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: Declare.cameraFile == null
                      ? Center(child: new Text('Sorry nothing selected!!'))
                      : Center(child: new Image.file(Declare.cameraFile)),
                ),
                ElevatedButton(
                  onPressed: () {
                    nevigat_e();
                  },
                  child: Text("lets begin editing"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
