import 'package:flutter/material.dart';

class GestureDetector1 extends StatelessWidget {


  final String titile1;

  GestureDetector1(this.titile1);

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text(titile1 ),
      ),
      body: Center(
        child: Gesture(),
      ),
    );
  }
}



class Gesture extends StatefulWidget {

  @override
  GestureState createState() {
    return new GestureState();
  }
}

class GestureState extends State<Gesture> {

  int bal =1000;


  @override
  Widget build(BuildContext context) {

    return Column(children: <Widget>[
     Expanded(child: Text("let play")),


     Expanded(child: Text("\$$bal", style: TextStyle(fontSize: 42,color: bal>1000?Colors.green:Colors.purple), ),
     ),





      Expanded(child:    GestureDetector(

      onTap: (){  setState(() {
        if(this.bal > 1000){}
        bal=bal+100;
      });
//        final snackbar = SnackBar(content: Text("this the snackbar"));
//        Scaffold.of( context ).showSnackBar(snackbar);
      },

      child:Center(child:  Container(

        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Theme.of(context).buttonColor),
        child: Text("button"),

      ),)
    )),
      ],

    );
  }
}




