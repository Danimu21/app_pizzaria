import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/views/home.dart';

class Pizza_App extends StatelessWidget {
  const Pizza_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_App(),
    );
  }
}
