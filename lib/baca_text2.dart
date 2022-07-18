import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TeksAssets2 extends StatefulWidget {
  const TeksAssets2({Key? key}) : super(key: key);

  @override
  State<TeksAssets2> createState() => _TeksAssets2State();
}

class _TeksAssets2State extends State<TeksAssets2> {
  String mydata = '';

  void writeTextState(String path) async {
    final textAsset = await rootBundle.loadString(path);
    setState(() {
      mydata = textAsset;
    });
  }

  @override
  Widget build(BuildContext context) {
    writeTextState('assets/sample_data/sample_recipes.json');
    return Text(mydata);
  }
}
