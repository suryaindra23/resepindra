import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resepindra/models/simple_recipe.dart';

class RecipeView1 extends StatelessWidget {
  const RecipeView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String jsonString = '';
    return FutureBuilder<String>(
      future: rootBundle.loadString('sample_data/sample_recipes.json'),
      builder: (BuildContext context, AsyncSnapshot dataAset) {
        if (dataAset.hasData &&
            dataAset.connectionState == ConnectionState.done){
          jsonString = dataAset.data ?? '';
          final Map<String, dynamic> jsonData = jsonDecode(jsonString);
          final recipes = <SimpleRecipe>[];
          if (jsonData['recipes'] != null) {
            jsonData['recipes'].forEach((item) {
              recipes.add(SimpleRecipe.fromJson(item));
            });
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile (
                  leading: Text(recipes[index].id),
                  title: Text(recipes[index].title),
                  subtitle: Text(recipes[index].duration),
                  trailing: Image(
                    image: AssetImage (
                    recipes[index].dishImage,
              ),
              width: 60,
              height: 60,
                  ),
              );
            },
          );
        }else {
          return const Text('Waiting');
        }
      },
    );
  }
}