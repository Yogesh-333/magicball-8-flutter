import 'dart:math';

import 'package:flutter/material.dart';

void main() {runApp(
    MaterialApp(
      home: (
          Scaffold(
            backgroundColor: Colors.lightBlue,
              appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Magic-8-Ball'),
            ),
              body: pool(),

          )
                ),
        ),
    );
  }
class pool extends StatefulWidget {
  @override
  _poolState createState() => _poolState();
}

class _poolState extends State<pool> {
  int pressed=1;
  void genrate(){
  setState(() {
pressed=Random().nextInt(5)+1;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
          children :<Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    genrate();
                  });
                },
                child: Image.asset('images/ball$pressed.png'),
              ),
          ),
    ],
      ),
      );
  }
}
//changes