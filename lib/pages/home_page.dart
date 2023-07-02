import 'package:flutter/material.dart';
import 'package:yummly_entry_recipe_app/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.grey[700],
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant),
              SizedBox(
                width: 15,
              ),
              Text('Recipes'),
            ],
          ),
        ),
        body: ListView(
          children: [
            RecipeCard(),
          ],
        ));
  }
}
