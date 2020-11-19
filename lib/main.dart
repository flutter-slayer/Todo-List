import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/Screens/HomeScreen.dart';


import 'Screens/SplashScreen.dart';

void main() {
  runApp(GetMaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
     // '/Home': (BuildContext context) => new HomeScreen(),SplashScreen
       '/Home': (BuildContext context) => new HomeScreen(),


    },
  ));

}



