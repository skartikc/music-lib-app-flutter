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
    return Container(
      padding: const EdgeInsets.only(left:15),
      margin: const EdgeInsets.only(left: 27,right: 27,top:10),
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
      child: Text(songName,style: TextStyle(fontSize: 23)),
    );
  }
}