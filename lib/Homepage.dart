import 'package:flutter/material.dart';
import 'Permit.dart';
import 'Editingg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 12,
        child: Scaffold(
          appBar:AppBar(
            leading: Icon(Icons.add_a_photo_rounded,
            color:Colors.teal,
            shadows: [Shadow(color:Colors.green,blurRadius: 12)]),

            bottom:TabBar(

              tabs: [Icon(Icons.satellite,color: Colors.teal,),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.teal,))],
            padding: EdgeInsets.all(2.0),),
            backgroundColor: Colors.orangeAccent,
            surfaceTintColor: Colors.purpleAccent,
            bottomOpacity: 0.45,
            shadowColor: Colors.teal,
            title: Text("Ickooo",style :TextStyle(
              fontSize: 30,
              fontFamily: 'font.ttf',
              fontStyle: FontStyle.italic,
            ))
          ),



          body: Center(
            child: Container(
              width: 2000,
              height : 2000,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.redAccent,
              Colors.deepOrangeAccent,
              Colors.deepOrange],
              )),
              child: Column(
              children: [
                SizedBox(height: 140,),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>CameraAccess()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,

                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(image:AssetImage("assets/Huty.jpg"),
                      fit :BoxFit.fill,
                      repeat: ImageRepeat.noRepeat,
                      ),
                      border: Border.all(
                        width: 8.0,
                          color:Colors.brown

                      ),
                    ),
                    child:Text("")

                      ,)),



                Text("Photo",style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Truck()));
                  },
                  child: Container(
                    height: 150,
                    width: 150,


                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(image:AssetImage("assets/vid.jpg"),
                        fit :BoxFit.fill,
                        repeat: ImageRepeat.noRepeat,
                      ),
                      color: Colors.white,
                      border: Border.all(
                          width: 8.0,
                          color:Colors.brown,

                      ),
                    ),
                    child:Text("")
                  ),

                ),
              Text("Video",style: TextStyle(fontSize: 20),)]
              ),

            ),
    )

    ))
    );
  }
}


