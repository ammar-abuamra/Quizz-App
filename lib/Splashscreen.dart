import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'main.dart';


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:SplashScreen(
      seconds: 3,
       image:Image.asset('image/2.jpg') ,
        title:  Text('من سيربح الموز؟',style:TextStyle(fontSize: 40,color: Colors.black),textAlign:TextAlign.center ,),
        backgroundColor: Colors.amber,
      loaderColor: Colors.white,
      photoSize:220.0,
        navigateAfterSeconds:MyApp() ,


      ) );
  }
}
