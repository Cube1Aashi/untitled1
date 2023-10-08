
import 'dart:async';
import 'package:flutter/material.dart';
import 'Homepage.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Image(image: AssetImage("assets/Huty.jpg"),
          width: 100.0,
          height: 100.0,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    );
  }
}