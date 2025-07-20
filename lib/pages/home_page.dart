import 'package:flutter/material.dart';
import 'package:flutter_my_app/Widget/item_answer.dart';
import 'package:flutter_my_app/model/que_item_model.dart';
import 'package:flutter_my_app/Widget/que_item.dart';
import 'package:flutter_my_app/Widget/totel_score_reset.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int totalscore = 0;
  bool isSelected = false;
  int totalquestion = MapQue.length * 10;
  int anserChosen = -1;

  @override
  Widget build(BuildContext context) {
    debugPrint("Total Score: $totalscore");
    isSelected = totalscore >= totalquestion;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "Quiz App",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: Colors.white),
            ),
          ],
        ),

        backgroundColor: Color.fromARGB(255, 129, 72, 125),
      ),
      body: SafeArea(
        child: !(isSelected)
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QueItem(queItem: MapQue[index], index: index),
                    SizedBox(height: 30), // Displaying the first question
                    Column(
                      children: List.generate(
                        MapQue[index].answerItem.length,
                        (i) => itemAnswer(
                          answerM: MapQue[index].answerItem[i],
                          isSelected: anserChosen == i,
                          answerCallback: () {
                            setState(() {
                              anserChosen = i;
                            });
                          },
                        ),
                      ),

                      // children: MapQue[index].answerItem
                      //     .map(
                      //       (answerM) => itemAnswer(
                      //         answerM: answerM,
                      //         answerCallback: () {},
                      //       ),
                      //     )
                      //     .toList(),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {
                          if (index < MapQue.length - 1) {
                            setState(() {
                              index++;
                            });
                          }
                          setState(() {
                            totalscore += 10;
                            anserChosen = -1;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : TotelScoreReset(
                totalscore: totalscore,
                resetCallback: () {
                  setState(() {
                    index = 0;
                    totalscore = 0;
                  });
                },
              ),
      ),
    );
  }
}
