import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TeksAssets extends StatelessWidget {
  const TeksAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future:
        DefaultAssetBundle.of(context).loadString('datatext.txt'),
    builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return Text(snapshot.data ?? '');
          } else {
            return const Text('Waiting');
      }
    },
    );
  }

}