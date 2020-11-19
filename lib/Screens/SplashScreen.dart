import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {

    startTimer();
    super.initState();
  }

  void startTimer() {
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacementNamed("/Home");

    });
  }

  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff239DE4),
         body: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     // height: MediaQuery.of(context).size.height,

                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.2,
                          top: MediaQuery.of(context).size.height * 0.1),


                      child: SizedBox(
                        width: MediaQuery.of(context).size.width ,
                        child: ColorizeAnimatedTextKit(

                            text: ['Todo List'],
                            textStyle: TextStyle(fontSize: 43.0, fontFamily:"Segoe UI"),
                            colors: [
                              Colors.white,
                              Colors.lightBlue.shade300,
                              Color(0xFF26c6da ),
                              Colors.lightBlue.shade300,
                            ],
                            textAlign: TextAlign.start,
                            alignment:
                            AlignmentDirectional.topStart // or Alignment.topLeft
                        ),
                      ),

                    ),
                    Image(image:AssetImage('images/bg.png'),
                      height: MediaQuery.of(context).size.height*0.5,
                      ),

                    Image(image:AssetImage('images/logo.png'),
                      height:MediaQuery.of(context).size.height*0.18,
                     ),
                  ],









                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
}