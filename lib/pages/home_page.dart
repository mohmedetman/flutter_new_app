import 'package:flutter/material.dart';
import 'package:project_news/model/Category_Card.dart';
import 'package:project_news/weight/list_news.dart';
import 'package:project_news/weight/list_view_horization.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Category_Card> category = [
    Category_Card(
        name: "Health",
        image:
            "data:image/jpeg;base64,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"),
    Category_Card(
        name: "Sport",
        image:
            "data:image/jpeg;base64,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"),
    Category_Card(
        name: "Image",
        image:
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
    Category_Card(
        name: "Scine",
        image:
            "data:image/jpeg;base64,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"),
    Category_Card(
        name: "entertaiment",
        image:
            "data:image/jpeg;base64,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"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("news "),
              Text(
                " cloud",
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
          slivers: [
               SliverToBoxAdapter(child: list_view_horization(category:category,) ,),
               SliverToBoxAdapter(
                 child: SizedBox(
                  height: 16,
                 ),
               ),
               SliverToBoxAdapter(child:Expanded(child: list_news())  ,),
          ]),
        ),
        // 
        );
  }
}