import 'package:flutter/material.dart';
import 'package:project_news/model/Category_Card.dart';
import 'package:project_news/weight/category_card.dart';

class list_view_horization extends StatelessWidget {
  const list_view_horization({
    super.key,
    required this.category,
  });

  final List<Category_Card> category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
    
        itemCount: category.length,
        itemBuilder: (BuildContext context, int index) {
          return CardWight(
            category_card: category[index],
          );
        }),
    );
  }
}

