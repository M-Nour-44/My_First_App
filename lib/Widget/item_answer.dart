import 'package:flutter/material.dart';
import 'package:flutter_my_app/model/answer_item_model.dart';

class itemAnswer extends StatelessWidget {
  final AnswerItemModel answerM;
  final bool isSelected;
  final answerCallback;
  const itemAnswer({
    super.key,
    required this.answerM,
    this.answerCallback,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answerM.onPressed();
            answerCallback.call();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(16),
              color: isSelected
                  ? const Color.fromARGB(255, 141, 79, 136)
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    answerM.title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    isSelected ? Icons.check_circle : Icons.circle_outlined,
                    size: 30,
                    color: isSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 117, 64, 117),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
