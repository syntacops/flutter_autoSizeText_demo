import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

class AutoSizeTextDemoScreen extends StatefulWidget {
  @override
  _AutoSizeTextDemoScreenState createState() => _AutoSizeTextDemoScreenState();
}

class _AutoSizeTextDemoScreenState extends State<AutoSizeTextDemoScreen> {
  int _maxLines = 1;

  @override
  Widget build(BuildContext context) {
    String _sentence =
        'Hello, I am a very clever $_maxLines-liner text inside a ';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('auto_size_text 2.1.0 - Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.grey[700],
                width: double.infinity,
                child: AutoSizeText(
                  _sentence + 'container!',
                  style: TextStyle(fontSize: 30.0),
                  maxLines: _maxLines,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: _sentence + ' TextFormField!',
                maxLines: _maxLines,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
