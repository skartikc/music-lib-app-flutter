import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.featured_play_list_sharp),
              hintText: 'Enter new Playlist Name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.playlist_add),
              hintText: 'Enter Songs',

              labelText: 'Songs',
            ),
          ),
          Center(child:
          Container(
            margin: const EdgeInsets.only(top:100),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.green,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(6.0, 6.0),
                ),
              ],
            ),
            child:
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green),
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('DONE',style: TextStyle(color: Color(0xFFFFFFE9),height: 1.15, fontSize: 15)),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

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
      body: MyCustomForm()
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