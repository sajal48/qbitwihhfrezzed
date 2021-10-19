import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Default"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amberAccent,
      ),
    );
  }
}
