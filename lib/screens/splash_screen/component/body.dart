import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    
    super.initState();
    Timer(Duration (seconds:1) ,() { 
      Navigator.pushReplacement(context,MaterialPageRoute(
        builder:(context)=> start_screen))
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Container(
                width: 100,
                height: 100,
                
                child: Image.asset('assets/images/logo.webp'
                
                )
                ),
                
             const SizedBox(
              height: 30,
             ),
              
                
             
            ],
          )),
      )
    );
  }
}