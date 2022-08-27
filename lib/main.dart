import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    play(var a){
      final player = AudioPlayer();
      player.setSource(AssetSource('note$a.wav'));
    }
    Expanded task({int x , Color color}){
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0),),
          onPressed: () {
            play(x);
          },
          child: Container(
            color: color,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
       backgroundColor: Colors.black,
        body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              task(x:1,color: Colors.green ),
              task(x:2,color: Colors.blue ),
              task(x:3,color: Colors.yellow ),
              task(x:4,color: Colors.red ),
              task(x:5,color: Colors.pink ),
              task(x:6,color: Colors.purple ),
              task(x:7,color: Colors.teal),



            ],
          )

        ),
      ),
    );
  }
}



