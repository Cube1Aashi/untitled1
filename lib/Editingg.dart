import "package:flutter/material.dart";
import "package:flutter/foundation.dart";
import "package:image_editor/image_editor.dart";

class Editingg {
  void f1(){
    FlipOption(horizontal: true,vertical: false);

  }
}




class Truck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoEditingPage(),
    );
  }
}

class VideoEditingPage extends StatefulWidget {
  @override
  _VideoEditingPageState createState() => _VideoEditingPageState();
}

class _VideoEditingPageState extends State<VideoEditingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Video Editing App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.black, // Video preview here
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 48.0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.crop),
                          onPressed: () {
                            // Implement crop functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.filter),
                          onPressed: () {
                            // Implement filter functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.text_fields),
                          onPressed: () {
                            // Implement text overlay functionality
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.music_note),
                          onPressed: () {
                            // Implement music overlay functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.brush),
                          onPressed: () {
                            // Implement drawing functionality
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // Implement other editing functionality
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Implement save and export functionality
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(23,23,47,90),),


                ),
                child: Text('Save and Export'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

