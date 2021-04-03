import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function requiz;
  Result(this.requiz);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text('مبروك ربحت موزه',style: TextStyle(fontSize: 30),),
            SizedBox(height: 60),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset('image/1.jpg',fit: BoxFit.cover,),
            ),
            SizedBox(height: 60),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber),
                child: Text('اربح كمان موزه',style: TextStyle(fontSize: 30,color: Colors.black),textAlign:TextAlign.center ,),
                onPressed: requiz,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
