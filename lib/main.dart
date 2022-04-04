import 'package:flutter/material.dart';
import 'package:stuped_quizz_app/answer.dart';
import 'package:stuped_quizz_app/drawer.dart';
import 'package:stuped_quizz_app/quiz.dart';
import 'Splashscreen.dart';
import 'qustion.dart';
import 'package:stuped_quizz_app/result.dart';

void main() {
  runApp(Splash());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  void requiz() {
    setState(() {
      qindex = 0;

    });
  }

  void answerq() {

    setState(() {
      qindex += 1;
    });
  }

  int qindex = 0;
  final  List<Map<String, Object>> _qustion = [
    {'the qustion': 'تعد الاردن من افضل 3 دول في ؟',
      'answrs': ['الامن والامان', 'الدخل القومي ', 'الاسد ملك الغابه',]
    },
    {
      'the qustion': 'تعد الاردن جنة ل؟ ',
      'answrs': ['توفر فرص العمل ', 'الطبيعة الخلابة ', 'عمارمش تبع شغل',]
    },
    {
      'the qustion': 'يستورد الاردن 96% من مصادر الطاقه ؟',
      'answrs': ['لان نسبة 97% من رمال السلكه الموجوده بالاردن لا تفطي الاحتياجات', 'لان جبال الفوسفات عاليه جدا', 'عدم قدرة الاسماك للتاقلم بجو الغور',]
    },
    {
      'the qustion': ' تغطي الاردن نفاقات صندوق النقد الدولي عن طريق ؟',
      'answrs': ['السياحه', 'تخصيص الثروات الطبيعيه لشركات اقليميه ', 'مخيم شلنر',]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amber,
          textTheme: ThemeData.light()
              .textTheme
              .copyWith(bodyText1: TextStyle(color: Colors.black))),
      home: Scaffold(
        drawer: DraWer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            'من سيربح الموز؟',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        body: qindex < _qustion.length
            ? SingleChildScrollView(child: Quiz(_qustion, qindex,answerq, ))
            : Result(requiz),
      ),
    );
  }
}
