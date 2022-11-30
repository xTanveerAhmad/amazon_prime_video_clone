
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:amazon_prime_video_clone/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const amazon_prime_video_clone());
}

class amazon_prime_video_clone extends StatelessWidget {
  const amazon_prime_video_clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Video',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
    );
  }
}
