import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loginapp();
  }
}


class Loginapp extends StatefulWidget {
  @override
  _LoginappState createState() => _LoginappState();
}

class _LoginappState extends State<Loginapp> {

  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();
  String welcome;

  void gogo(){
    setState(() {
      this.welcome=user.text;

    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login App"),),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            Image.asset("images/tac.jpg",width: 100.0,height: 100.0,),

            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 480.0,height: 220.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: user,


                    decoration: InputDecoration(icon: Icon(Icons.verified_user),

                        hintText: "enter your name",),

                  ),
                  TextField(
                    controller: pass,
                    decoration: InputDecoration(icon: Icon(Icons.lock_outline), hintText: "enter your name"),

                  ),

                  SizedBox(height: 60.0,),
                  Row(

                    children: <Widget>[
                      Container(child:
                      RaisedButton(   child: Text("Login",style:
                      TextStyle(fontStyle: FontStyle.italic)), color: Colors.blue,

                        onPressed: (){gogo(); },),
                      margin: EdgeInsets.only(left: 10.0),),
                      SizedBox(width: 70,),

                      RaisedButton(child: Text("Clear"),color: Colors.blue,onPressed: (){user.clear();
                      pass.clear();},),
                    ],
                  ),

                ],
              ),
            ),

            Container(margin: EdgeInsets.only(top: 33.0),child: Text("hellow $welcome "),)
          ],


        ),

      ),




    );
  }
}
