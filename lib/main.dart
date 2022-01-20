import 'package:flutter/material.dart';
import 'package:online_courses/screens/intro_screen.dart';
void main(){
  runApp(OnLineCourses());
}


class OnLineCourses extends StatelessWidget {
  const OnLineCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}



