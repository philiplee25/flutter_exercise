import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/invitation_bg.jpg'),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text('Happy', style: TextStyle(fontSize: 90))),
              Center(child: Text('Birthday', style: TextStyle(fontSize: 90))),
              Center(child: Text('Sam!', style: TextStyle(fontSize: 90))),
              Center(child: Text('From Emma', style: TextStyle(fontSize: 30))),
            ],
          ),
        ],
      ),
    );
  }
}
