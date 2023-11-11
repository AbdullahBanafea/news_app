import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News')
      ),
      body: ListView.builder(
          itemCount: 11,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text('breakNew'),
          subtitle: Text('the app works like fire!'),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.local_fire_department_sharp),
        );
      },
     ),
    );
  }

}
