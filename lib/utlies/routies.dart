import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_one.dart';
import 'package:routing/utlies/routies_name.dart';

class Routes{

  static Route<dynamic> generateRoute (RouteSettings settings){
    switch(settings.name){
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      case RouteName.screenOne:
        return MaterialPageRoute(builder: (context)=> ScreenOne());
      default :
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('Routes No Found'),),
          );
        });

    }
  }
}