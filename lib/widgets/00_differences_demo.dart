import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DifferencesDemo extends StatelessWidget {
  final _maxLines = 2;

  @override
  Widget build(BuildContext context) {
    final _exampleText =
        'This is a example text which should never take more than $_maxLines lines.';

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'Text',
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: AutoSizeText(
                  'AutoSizeText',
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Text(
                      _exampleText,
                      style: TextStyle(fontSize: 30.0),
                      maxLines: _maxLines,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    AutoSizeText(
                      _exampleText,
                      style: TextStyle(fontSize: 30.0),
                      maxLines: _maxLines,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
