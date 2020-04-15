import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(child: Text('Ask Me Anything',style: TextStyle(color: Colors.black),)),
          ),
          body: AskMe()
        )
      ),
    );

class AskMe extends StatefulWidget {

  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  var BtnClick = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
              child:FlatButton(onPressed: (){
                setState(() {
                  BtnClick = Random().nextInt(5)+ 1;
                  print('btn:$BtnClick');
                });
    },
                   child: Image.asset('images/ball$BtnClick.png')),

        ),
    
      ],
    );
  }
}
