import 'package:flutter/material.dart';

import 'package:routing/utlies/routies_name.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: const Color(0xff0039ff),
      ),
      backgroundColor: const Color(0xff12349f),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: const Color(0xffcec617),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Welcome \n Back',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RouteName.screenOne);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.shade400,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(child: Text('go to Screen one'),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
