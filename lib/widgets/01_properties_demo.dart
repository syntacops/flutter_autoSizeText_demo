import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeTextPropertiesDemo extends StatelessWidget {
  AutoSizeTextPropertiesDemo({Key key}) : super(key: key);

  //* Max lines
  final int _maxLines = 2;
  final int _maxLines2 = 3;

  //* Groups
  final group1 = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
// #region hide

    String _sentence =
        'Hello, I am a very clever $_maxLines-liner text inside a container!';

    String _sentence2 =
        'Hello, I am a very clever $_maxLines2-liner text inside a container!';

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[700],
          width: double.infinity,
          child: Column(
            children: [
// #endregion
              AutoSizeText(
// #region props
                //* data
                _sentence,
                //* style
                style: TextStyle(fontSize: 30.0),

// #endregion
                //* maxLines
                maxLines: 2,

                //* group
                group: group1,
                //
              ),
            ],
          ),
        ),

// #region hide2
        //
        SizedBox(height: 10),
        //
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[700],
          width: double.infinity,
          child: Column(
            children: [
// #endregion

              AutoSizeText(
// #region props
                //* data
                _sentence2,
                //* style
                style: TextStyle(fontSize: 30.0),

// #endregion

                //* maxLines
                maxLines: 3,

                //* group
                group: group1,
                //
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// #region old

// //* maxFontSize (default: double.infinity)
// //maxFontSize: 40,

// //* minFontSize (default: 12)
// //minFontSize: 15,

// //* stepGranularity (default: 1)
// //stepGranularity: 5.0

// //* presetFontSizes
// //presetFontSizes: [30, 20, 5],

// //* wrapWords (default: true)
// wrapWords: false,

// //* overflowReplacement
// overflowReplacement: Text('Too small'),

// //* maxFontSize (default: double.infinity)
// //maxFontSize: 40,

// //* minFontSize (default: 12)
// //minFontSize: 15,

// //* stepGranularity (default: 1)
// //stepGranularity: 5.0

// //* presetFontSizes
// //presetFontSizes: [30, 20, 5],

// //* wrapWords (default: true)
// wrapWords: false,

// //* overflowReplacement
// overflowReplacement: Text('Too small'),

// #endregion
