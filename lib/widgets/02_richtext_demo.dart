import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText.rich(
        TextSpan(
          text: 'This is a ',
          children: <TextSpan>[
            TextSpan(
              text: 'AutoSizeText.rich ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            TextSpan(text: 'which will never use more than '),
            TextSpan(
              text: '2 lines of space!',
            ),
          ],
        ),
        style: TextStyle(fontSize: 30),
        minFontSize: 10,
        maxLines: 2,
      ),
    );
  }
}
