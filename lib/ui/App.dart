import 'package:flutter/material.dart';

class App extends StatelessWidget {

  void did(){debugPrint("search taped");}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(backgroundColor: Colors.green.shade700,
        title: Text("demo app"),actions: <Widget>[

          IconButton(icon: Icon(Icons.keyboard_arrow_right),
              onPressed: (){debugPrint("button taped");}),

          IconButton(icon: Icon(Icons.search), onPressed: did)

        ],
      ),

         bottomNavigationBar: BottomNavigationBar( items: [
           BottomNavigationBarItem(icon: Icon(Icons.add),title: Text("add")),
           BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("doit")),
           BottomNavigationBarItem(icon: Icon(Icons.title),title: Text("t")),
           //BottomNavigationBarItem(icon: Icon(Icons.save),title: Text("save")),
         ],onTap: (int i){debugPrint("taped $i");},),

          floatingActionButton: FloatingActionButton(onPressed: (){debugPrint("flotbutton");},
          child: Icon(Icons.file_download),elevation: 5.0,
            tooltip: "download",
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(33)),
          ),


          body: Column(mainAxisAlignment: MainAxisAlignment.center,    children: <Widget>[
        Text(
          " way this how things done",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.deepPurple,
              fontSize: 40.0),
        ),

        Text(
          "second",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.deepPurple,
              fontSize: 20.0),
        ),
            Row(children: <Widget>[
             Expanded(child: Text(
                  "tired",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.deepPurple,
                      fontSize: 20.0)
              ),),

             Expanded(child: Text(
                  "fouthdf ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.deepPurple,
                      fontSize: 20.0)
              ),),
             Expanded(child: Text(
                 "6th ",
                 textDirection: TextDirection.ltr,
                 style: TextStyle(
                     decoration: TextDecoration.none,
                     color: Colors.deepPurple,
                     fontSize: 20.0)
             ),),
             Expanded(child: Text(
                 "7th ",
                 textDirection: TextDirection.ltr,
                 style: TextStyle(
                     decoration: TextDecoration.none,
                     color: Colors.deepPurple,
                     fontSize: 20.0)
             ),)
            ],)


      ],),);

  }
}


