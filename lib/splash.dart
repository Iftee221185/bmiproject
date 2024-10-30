import 'dart:async';

import 'package:bmiproject/Homepage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  starttimer() async {
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset("assets/images/logo.png",height: 150,width: 150,),
            SizedBox(height: 8,),
            Text("BMI",style: TextStyle(
              fontSize:50,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),
            Text("c a l c u l a t o r",style: TextStyle(
                fontSize:20,
                color: Colors.blue
            ),),
            SizedBox(height: 15,),
            CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
