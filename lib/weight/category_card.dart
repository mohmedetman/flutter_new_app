import 'package:flutter/material.dart';
import 'package:project_news/model/Category_Card.dart';

class CardWight extends StatelessWidget {
  const CardWight({
    super.key,required this.category_card
  });
final Category_Card category_card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        child: Center(child: Text(category_card.name)),
        width: 200,
        height: 100,
      decoration: BoxDecoration(
      color: const Color(0xff7c94b6),
      image:  DecorationImage(
        image: NetworkImage(category_card.image),
        fit: BoxFit.cover,
      ),
       
      borderRadius: BorderRadius.circular(12),
      ),
    ),
    );
  }
}