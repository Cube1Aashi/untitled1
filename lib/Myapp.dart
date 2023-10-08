import 'package:flutter/material.dart';
import 'dart:async';
import 'Permit.dart';
import 'package:path/path.dart';
import 'package:photofilters/photofilters.dart';
import 'package:image/image.dart' as imageLib;



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String fileName = "w";
  List<Filter> filters = presetFiltersList;

  Future getTools(context) async{

  }

  Future getImage(context) async {
    var ic;

    var hello = imageLib.decodeImage(Declare.cameraFile.readAsBytesSync())!;

    fileName = basename( await Declare.cameraFile.path);
    //image = imageLib.copyResize(image, width: 600);
     Map imagefile = await Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) =>  PhotoFilterSelector(
          title: Text("Ickoooo"),
          image: hello,
          filters: presetFiltersList,
          filename: fileName,
          loader: Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
     );
    if (imagefile != null && imagefile.containsKey('image_filtered')) {
      setState(() {
        Declare.cameraFile = imagefile['image_filtered'];
        ic = imagefile['image_filtered'];

      });
      print(Declare.cameraFile.path);


    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Ickoooo"),
        foregroundColor: Colors.yellow,
         backgroundColor: Colors.yellowAccent,
        actions: [IconButton(onPressed: (){
        }, icon: Icon(Icons.save_alt_sharp))],
        shape: Border.all(
        color: Colors.greenAccent,
         width: 1.5,
      ),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border(top:BorderSide(width: 4,),left: BorderSide(width: 4,)
          ),),
          child: Declare.cameraFile == null
              ? Center(
            child: new Text('No image selected.'),
          )
              : Image.file(Declare.cameraFile),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => getImage(context),
        tooltip: 'Pick Image',
        child:  Icon(Icons.wind_power_outlined),
        backgroundColor: Colors.pink,
        hoverColor: Colors.pinkAccent,
        splashColor: Colors.red,
        elevation: 40,
      ),




    );
  }
}