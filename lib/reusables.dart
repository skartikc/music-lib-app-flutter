
import 'dart:ui';

import 'package:flutter/material.dart';

class Disp_playlist extends StatefulWidget {
  @override

  final String songName;  // <--- generates the error, "Field doesn't override an inherited getter or setter"
  Disp_playlist({
    required String songName,
  }): this.songName = songName;

  _Disp_playlistState createState() => _Disp_playlistState(songName);
}


class _Disp_playlistState extends State<Disp_playlist> {
  _Disp_playlistState(this.songName);

  final String songName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:
    Container(
      padding: const EdgeInsets.only(left: 15),
      margin: const EdgeInsets.only(left: 27, right: 27, top: 10),
      height: 75,
      width: 500,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 6),
        borderRadius: BorderRadius.circular(50),
        color: Colors.tealAccent,
        boxShadow: const [
          BoxShadow(
            color: Colors.blueAccent,
            offset: Offset(6.0, 6.0),
          ),
        ],
      ),
      child: Text(songName, style: const TextStyle(
          fontSize: 23, color: Colors.black87,)),
    ),
        onLongPress: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Container(child: Center(child:Column(children: <Widget>[Text(songName,style: const TextStyle(color: Color(0xFFFFFFE9),height: 1.15, fontSize: 15),),const Image(
                    image: AssetImage("spotred.jpg"),
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),const SizedBox(height: 15,)
                    ,const Text("'Tired' is a song by Norwegian DJ and music producer Alan Walker, featuring Irish singer-songwriter Gavin James. The song was written by Mike Needle, Dan Bryer, Gavin James and Ollie Green, and was produced by Alan Walker, Gunnar Greve, Mood Melodies, Lars Kristian Rosness, Marcus Arnbekk, Fredrik Borch Olsen and Carl Hovind. It was released commercially for digital download on 19 May 2017. On 14 July 2017, Kygo released a remix of the song. In January 2018, Big Iyz remixed the song, credited to himself featuring Alan Walker and Gavin James.",style: TextStyle(color: Color(
                        0xFFFFFFE9),height: 1.15, fontSize: 15),),]),),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(6.0, 6.0),
                        ),
                      ],
                    ),
                  width: 400,
                  height: 600,
                  padding: EdgeInsets.only(left:10,right: 10,top: 7),),);
              }
          );
        }
    );
  }
}