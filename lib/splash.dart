import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'user/login.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Login(),
      title: Text(
        'ALab',
        textScaleFactor: 2,
      ),
      image: Image.asset(
        'images/loginscreen.jpg',
        width: 450,
        height: 300,
      ),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.teal,
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ApnaLab")),
      body: Center(
          child: Text(
        "home",
        textScaleFactor: 2,
      )),
    );
  }
}
