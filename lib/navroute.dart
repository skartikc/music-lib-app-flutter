import 'package:flutter/material.dart';

class Navigation_and_Routing_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (
          Row(mainAxisAlignment: MainAxisAlignment.start,children: const <Widget>[
            SizedBox(width: 30,),
            Image(
              image: AssetImage("spotred.jpg"),
              width: 55.0,
              height: 75.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10,),
            Text("Shpotify", style: TextStyle(fontFamily: "MyFont" ,color: Colors.red, fontSize: 24.0),),
          ])),
          backgroundColor: Colors.black
        ),
      body:
            Column(children: <Widget>[
              const Text("Enter New Playlist Name -"),
              const Text("Add Song Name -"),
              Center(child:
                Container(
                    margin: const EdgeInsets.only(top:100),
                    height: 50,
                    width: 300,
                    child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('DONE'),
                      ),
                ),
              ),
            ])
    );
  }
}


class add_playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(45),
        child : Material(
          child : InkWell(
            child: const Icon(Icons.playlist_add_circle_rounded,color: Colors.red,size: 75,),
            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navigation_and_Routing_2()),
            );
            },
          ),
        ),
      );
  }
}