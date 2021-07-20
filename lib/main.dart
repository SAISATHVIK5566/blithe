import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'BLITHE',
      home: MyHome(),
    ));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("BLITHE",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ))),
        body: ListWheelScrollView(
          //squeeze:0.75 ,
          itemExtent:200,
          diameterRatio:5,
         //offAxisFraction:0.2,
          useMagnifier: true,
          magnification: 1.15,
          children: <Widget>[
            option5(),
            option(),
            option2(),
            option3(),
            option4(),
          ],
        ),
      ),
    );
  }
  Widget option(){
    return InkWell(
      onTap: () => {},
          child: Container(
        color: Colors.blueAccent,
        width: 300.0,
        height: 100.0,
        child:Center(child: Text('UPCOMING EVENTS',
         style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                )),
        )
      ),
    );
  }
  Widget option2(){
    return InkWell(
      autofocus: true,
      onTap: ()=>{},
      focusColor: Colors.brown,
      splashColor:Colors.indigo,
      radius: 25,
          child: Container(
        color: Colors.yellowAccent,
        width: 300.0,
        height: 200.0,
        child:Center(child: Text('ABOUT',
         style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                )),
        )
      ),
    );
  }
  Widget option3(){
    return Container(
      color: Colors.red,
      width: 300.0,
      height: 200.0,
      child:Center(child: Text('CONTACT US',
       style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
      )
    );
  }
  Widget option4(){
    return Container(
      color: Colors.green,
      width: 300.0,
      height: 200.0,
      child:Center(child: Text('AFFILIATE',
       style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
      )
    );
  }

  Widget option5(){
    return Container(
      color: Colors.orangeAccent,
      width: 300.0,
      height: 200.0,
      child:Center(child: Text('ANNOUNCEMENTS',
       style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
      )
    );
  }
}
