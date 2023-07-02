import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

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
              'lorem adshfkjahskjhfkhjflhjjashkjkjjjjkhjhhkjfdsaffa',
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
