import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/homeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFA4E8FF),
      body: Center(
        child: Text(
          'News',
          style: TextStyle(
              fontSize: 60, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
    );
  }
}

// void initState() {
//   super.initState();
//   Future.delayed(Duration(seconds: 3), () {
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (context) {
//           return HomeScreen();
//         }), (route) => false);
//   });
// }
