import 'package:flutter/material.dart';

class list_news extends StatelessWidget {
  const list_news({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap :true ,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              " articleModel.sdfdfgfgfdgfdfdgfdgdfgfdgtitle,gfdgdffdfdgrgrgrgrggfdgdffdfdgrgrgrgrg",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "gfdgdffdfdgrgrgrgrggfdgdffdfdgrgrgrgrggfdgdffdfdgrgrgrgrg",
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        );
      },
    );
  }
}
