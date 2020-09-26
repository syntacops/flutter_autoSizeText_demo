import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Sandbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'This is a AutoSizeText which will never use more than 2 lines of space!',
      style: TextStyle(fontSize: 30.0),
      maxLines: 2,
    );
  }
}
