import 'package:flutter/material.dart';

class TotelScoreReset extends StatelessWidget {
  final int totalscore;
  final VoidCallback resetCallback;
  const TotelScoreReset({
    super.key,
    required this.totalscore,
    required this.resetCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Congratulation',
            style: Theme.of(
              context,
            ).textTheme.displayMedium!.copyWith(color: Colors.black),
          ),
          SizedBox(height: 20),
          Text(
            'Total Score: $totalscore',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(color: Colors.black54),
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: resetCallback,
            child: Text(
              "restart",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Color.fromARGB(255, 136, 0, 125),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
