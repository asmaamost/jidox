import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../utils/colors.dart';
class ProgressSale extends StatelessWidget {
  final String title;
  final int step;
  final String val;

  const ProgressSale({super.key, required this.title, required this.step, required this.val});

  @override
  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(margin: EdgeInsetsDirectional.only(start: 15,end: 15,top: 10),
            child: Text("${title}",style: TextStyle(color: darkColor),)),
        Row(
          children: [
            Expanded(flex: 5,
              child: Container(margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
                child: LinearProgressBar(
                  maxSteps: 6,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: step,
                  progressColor: Colors.blueAccent,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  semanticsLabel: "${title}",
                  semanticsValue: "${val}",
                  minHeight: 5,
                ),
              ),
            ),
            Expanded(flex: 1,
                child: Text("${val}",style: TextStyle(color: darkColor),))
          ],
        ),
      ],
    );
  }
}
