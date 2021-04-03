
import 'package:flutter/material.dart';

class answers extends StatelessWidget {
  final String answert;
  final Function x;

 answers(  this.x ,this.answert );



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child:ElevatedButton(
        
        style: ElevatedButton.styleFrom(
        primary: Colors.amber),
             child: Text(answert,style: TextStyle(fontSize: 30,color: Colors.black),textAlign:TextAlign.center ,),
        onPressed:x,
      ),
    );
  }
}
