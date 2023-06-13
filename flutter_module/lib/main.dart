import 'package:flutter/material.dart';
import 'package:flutter_module/page/About.dart';
import 'package:flutter_module/page/recommend.dart';

void main() => runApp(const MyApp(Recommend()));

// @pragma('vm:entry-point')
// void about() => runApp(const MyApp(About()));

class MyApp extends StatelessWidget {
  final Widget page;

  const MyApp(this.page, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          body: page,
        ));
  }
}
