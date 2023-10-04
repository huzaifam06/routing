import 'package:flutter/material.dart';
import 'package:routing/utlies/routies_name.dart';

class ScreenOne extends StatefulWidget {

  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfffff200),
      ),
      backgroundColor: Color(0xffe1d856),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RouteName.homeScreen);
            },
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('Go Back '),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
