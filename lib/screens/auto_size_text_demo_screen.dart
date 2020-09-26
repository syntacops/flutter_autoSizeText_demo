import 'package:flutter/material.dart';
import 'package:flutter_autoSizeText_demo/widgets/00_differences_demo.dart';
import 'package:flutter_autoSizeText_demo/widgets/sandbox.dart';

import '../widgets/01_properties_demo.dart';
import '../widgets/02_richtext_demo.dart';
import '../widgets/03_groups_demo.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

class AutoSizeTextDemoScreen extends StatefulWidget {
  @override
  _AutoSizeTextDemoScreenState createState() => _AutoSizeTextDemoScreenState();
}

class _AutoSizeTextDemoScreenState extends State<AutoSizeTextDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('auto_size_text 2.1.0 - Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: PageView(
            children: [
              Sandbox(),
              DifferencesDemo(),
              AutoSizeTextPropertiesDemo(),
              RichTextDemo(),
              GroupsDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
