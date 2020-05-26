import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text('ASK ME ANYTHING')),
          backgroundColor: Colors.blue[900],
        ),
        body: askme(),
      ),
    ),
  );
}

class askme extends StatefulWidget {
  @override
  _askmeState createState() => _askmeState();
}

class _askmeState extends State<askme> {
  int imageno=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Row(
          children:<Widget>[
            Expanded(
              child:FlatButton(
                onPressed:(){
                  setState(() {
                    imageno=Random().nextInt(5)+1;
                  });
              },
                  child:Image.asset('images/ball$imageno.png'),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
