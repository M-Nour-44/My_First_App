import 'package:flutter/material.dart';
import 'package:flutter_my_app/model/answer_item_model.dart';

class QueItemModel {
  final String title;
  final List<AnswerItemModel> answerItem;
  QueItemModel({required this.title, required this.answerItem});
}

List<QueItemModel> MapQue = [
  QueItemModel(
    title: "What is your favorite color?",
    answerItem: [
      AnswerItemModel(
        title: "red",
        onPressed: () => debugPrint("red selected"),
      ),
      AnswerItemModel(
        title: "blue",
        onPressed: () => debugPrint("blue selected"),
      ),
      AnswerItemModel(
        title: "green",
        onPressed: () => debugPrint("green selected"),
      ),
      AnswerItemModel(
        title: "yellow",
        onPressed: () => debugPrint("yellow selected"),
      ),
    ],
  ),
  QueItemModel(
    title: "What is your favorite animal?",
    answerItem: [
      AnswerItemModel(
        title: "cat",
        onPressed: () => debugPrint("cat selected"),
      ),
      AnswerItemModel(
        title: "dog",
        onPressed: () => debugPrint("dog selected"),
      ),
      AnswerItemModel(
        title: "bird",
        onPressed: () => debugPrint("bird selected"),
      ),
      AnswerItemModel(
        title: "fish",
        onPressed: () => debugPrint("fish selected"),
      ),
    ],
  ),
  QueItemModel(
    title: "What is your favorite sport?",
    answerItem: [
      AnswerItemModel(
        title: "football",
        onPressed: () => debugPrint("football selected"),
      ),
      AnswerItemModel(
        title: "basketball",
        onPressed: () => debugPrint("basketball selected"),
      ),
      AnswerItemModel(
        title: "tennis",
        onPressed: () => debugPrint("tennis selected"),
      ),
      AnswerItemModel(
        title: "swimming",
        onPressed: () => debugPrint("swimming selected"),
      ),
    ],
  ),
];
