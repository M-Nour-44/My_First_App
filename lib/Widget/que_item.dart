import 'package:flutter/material.dart';
import 'package:flutter_my_app/model/que_item_model.dart';

class QueItem extends StatelessWidget {
  final int index;
  final QueItemModel queItem;
  const QueItem({super.key, required this.queItem, required this.index });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Question ${index + 1} of ${MapQue.length}", // Displaying the first question title
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: const Color.fromARGB(255, 136, 0, 125)),
          ),
          Text(
            queItem.title, // Displaying the first question title
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 12),
          Text(
            "Answer and get points", // Displaying the first question title
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
