import 'package:flutter/material.dart';

class DraWer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child:Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber,),
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        child: Text('اللهم علما ما ينفعا وانفعنا فيما علمتنا وزدنا علما',style: TextStyle(fontSize: 30,color: Colors.black),textAlign:TextAlign.center ),
      ),
    );
  }
}
