import 'package:flutter/material.dart';
import 'package:yummly_entry_recipe_app/models/recipe_api.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({super.key});

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  late List _recipes;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      isLoading = false;
    });
    print(_recipes);
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          ClipRRect(child: Image.asset('lib/images/nike_dunk_high.jpg')),
          SizedBox(
            height: 8,
          ),
          Text(
            'My Recipe name',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700]),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Voluptate reprehenderit exercitation esse proident exercitation laboris ad eu proident deserunt dolore amet elit.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('4.5',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700])),
                Text('30 min',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
