//import 'package:device_simulator/device_simulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_autoSizeText_demo/screens/auto_size_text_demo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Size Text Demo',
      theme: ThemeData.dark(),
      home: AutoSizeTextDemoScreen(),
    );
  }
}
