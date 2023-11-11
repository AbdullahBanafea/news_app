import 'package:flutter/material.dart';
import 'package:news/screens/splash.dart';

void main() {
  runApp(const News());
}

class News extends StatelessWidget {
  const News({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Splash(),
        ),
      ),
    );
  }
}
