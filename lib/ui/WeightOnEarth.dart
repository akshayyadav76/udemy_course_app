import "package:flutter/material.dart";


class weightOnEarth extends StatefulWidget {
  @override
  _weightOnEarthState createState() => _weightOnEarthState();
}

class _weightOnEarthState extends State<weightOnEarth> {

  double finalwight =0.0;
  final TextEditingController enterweight= TextEditingController();

   int gruop =0;

   void radiovalues(int value){
     setState(() {

  gruop = value;

  switch(gruop){
    case 0:  finalwight = calculator(enterweight.text,0.06);
    break;
    case 1:  finalwight = calculator(enterweight.text,0.38);
    break;
    case 2:  finalwight = calculator(enterweight.text,0.98);
    break;


  }

     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weight On Eath",),backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown,
      body: ListView(
        children: <Widget>[

          Image.asset("images/tac.jpg",width: 100.0,height: 100.0,),

          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: TextField(
              controller: enterweight,
              decoration: InputDecoration(hintText: "enter weight",
                labelText: "weight in kg",border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
              icon: Icon(Icons.message))
            ),
          ),

          // radio button

          Row(
           children: <Widget>[
             Radio<int>(value: 0, groupValue: gruop, onChanged: radiovalues ,activeColor: Colors.green,),
             Text("puto",style: TextStyle(fontStyle: FontStyle.italic),),

             Radio<int>(value: 1, groupValue: gruop, onChanged: radiovalues,activeColor: Colors.red,),
             Text("marse"),

             Radio<int>(value: 2, groupValue: gruop, onChanged: radiovalues,activeColor: Colors.blue,),
             Text("venus"),

             ],

          ),
          Container( margin: EdgeInsets.only(left: 150.0),  child: Text("$finalwight")),



        ],
      ),
    );
  }

  double calculator(String text, double d) {
 if(int.parse(text).toString().isNotEmpty && d>0)
   {
     return int.parse(text)* d;
   }else "wrong";


  }
}
