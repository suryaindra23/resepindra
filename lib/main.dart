import 'package:flutter/material.dart';
import 'package:resepindra/recipe_view1.dart';
import 'custom_theme.dart';
import 'home.dart';
import 'lib/home.dart';
import 'baca_text1.dart';
import 'baca_text2.dart';
import 'recipe_view1.dart';

void main() {
  runApp(const Resepimedia());
}

class Resepimedia extends StatelessWidget {
  const Resepimedia({Key? key}) : super(key: key);
  final dataString = 'Tes';
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text (
            'Data App',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: Column(
          children: const [
            Text('UAS SURYA INDRA PERMANA 19201241'),
            //Menampilkan Image dari Asset
            Image(
              image: AssetImage('food_pics/food_cupcake.jpg'),
              height: 300,
              width: 300,
            ),
            Text('UAS Surya Indra Permana 19201241'),
            Expanded(
              child: RecipeView1(),
            ),
          ],
        ),
      ),
    );
    
    // final theme = CustomTheme.dark();
    // return MaterialApp(
    //   theme: theme,
    //   title: 'Resepimedia',
    //   home: Home(),
    // );
  }
}
