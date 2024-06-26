import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/zebra.png', height: 100, width: 100),
          const Center(child: Text('Lee', style: TextStyle(fontSize: 50))),
          const Center(
              child: Text('developer', style: TextStyle(fontSize: 30))),
          const Column(
            children: [
              Text('010-0000-0000'),
              Text('abcd@efgh.com'),
              Text('경기도 수원시'),
            ],
          )
        ],
      ),
    );
  }
}
