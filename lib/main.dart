import 'package:flutter/material.dart';
import 'allScreen/splash_screen.dart';

late Size mq;

void main(){
  runApp(const Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),);
  }
}



