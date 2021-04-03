import 'package:flutter/material.dart';
import 'package:stuped_quizz_app/answer.dart';
import 'package:stuped_quizz_app/qustion.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> qustion ;
  final  int qindex ;
  final Function answerq;



 Quiz( this.qustion, this.qindex, this.answerq, ) ;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Container(
          child: Qustion(qustion[qindex]['the qustion']),
        ),
        SizedBox(
          height: 60,
        ),
        ...(qustion[qindex]['answrs'] as List<String> ).map((e) {
          return answers(answerq,e);
        }).toList(),
      ],
    );
  }
}
