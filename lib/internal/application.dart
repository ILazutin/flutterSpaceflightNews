import 'package:flutter/material.dart';
import 'package:flutter_spaceflight_news/presentation/home/home.dart';
import 'package:flutter_spaceflight_news/presentation/styles/styles.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spaceflight News',
      theme: Styles.theme(),
      home: Home(),
    );
  }
}
