import 'dart:ui';

import 'package:flutter/material.dart';
import 'navroute.dart';
import 'reusables.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(title: (
              Row(mainAxisAlignment: MainAxisAlignment.start,children: const <Widget>[
                Image(
                  image: AssetImage("spotred.jpg"),
                  width: 55.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10,),
                Text("Shpotify", style: TextStyle(fontFamily: "MyFont" ,color: Colors.red, fontSize: 24.0),),
              ])),
              backgroundColor: Colors.black),
          body: Column(
            children: <Widget>[
              const Divider(color: Colors.redAccent,),
              const SizedBox(height: 16,),
              const Center(child: Text("Your Playlist",style: TextStyle(fontFamily: "RobotoMono" ,color: Colors.white, fontSize: 19.0),)),
              const SizedBox(height: 8,),
              SizedBox(
                height: 350, // Constrain height.
                child: ListView(children: <Widget>[
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "Tired - Alan Walker"),
                  Disp_playlist(songName: "MADlab - ITA614"),
                ],
                ),
              ),
              const SizedBox(height: 45,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                const Icon(Icons.playlist_play_rounded,color: Colors.red,size: 75,),
                const SizedBox(width: 25,),
                add_playlist(),
               ],
              ),
              const SizedBox(height: 35,),
              const Divider(color: Colors.redAccent,),
              ]),
          ),
        debugShowCheckedModeBanner: false,
      );
  }
}