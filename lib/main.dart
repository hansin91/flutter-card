import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MaterialApp(
  home: LaunchCard()
));

class LaunchCard extends StatefulWidget {
  @override
  _LaunchCardState createState() => _LaunchCardState();
}

class _LaunchCardState extends State<LaunchCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[900],
     appBar: AppBar(
       title: Text('Ninja Card'),
       centerTitle: true,
       backgroundColor: Colors.grey[850],
       elevation: 0.0,
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         setState(() {
           ninjaLevel += 1;
         });
       },
       child: Icon(Icons.add),
       backgroundColor: Colors.grey[850],
     ),
     body: Padding(
       padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget> [
           Center(
            child: SvgPicture.asset('assets/ninja.svg')
           ),
           Divider(
             height: 60.0,
             color: Colors.grey[800],
           ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ) ,
            ),
            SizedBox(height: 10.0,),
            Text(
            'Chun-Li',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ) ,
          ),
          SizedBox(height: 30.0),
          Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ) ,
            ),
            SizedBox(height: 10.0,),
            Text(
            '$ninjaLevel',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ) ,
          ),
          SizedBox(height: 30.0),
          Row(
            children: <Widget> [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                'chun.li@yahoo.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),
              )
            ],
          )
         ],
       ),
     ),
   );
  }
}
