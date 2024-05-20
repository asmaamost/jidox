import 'package:flutter/cupertino.dart';
import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:jidox/features/presentation/pages/dashboard/progress_sale.dart';
import 'package:jidox/features/utils/colors.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:flutter/material.dart';

final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
double _progress = 90;

class TotalSale extends StatelessWidget {
  const TotalSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsetsDirectional.all(15),
              child: Text('Total Sales',style: TextStyle(color: darkColor,fontSize: 18),)),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: CircularSeekBar(
              width: double.infinity,
              height: 250,
              progress: _progress,
              barWidth: 8,
              startAngle: 45,
              sweepAngle: 270,
              strokeCap: StrokeCap.butt,
              progressGradientColors: const [
                Colors.blue,
                Colors.blueAccent,
              ],
              innerThumbRadius: 5,
              innerThumbStrokeWidth: 3,
              innerThumbColor: Colors.white,
              outerThumbRadius: 5,
              outerThumbStrokeWidth: 10,
              outerThumbColor: Colors.blueAccent,
              dashWidth: 1,
              dashGap: 2,
              animation: true,
              valueNotifier: _valueNotifier,
              child: Center(
                child: ValueListenableBuilder(
                    valueListenable: _valueNotifier,
                    builder: (_, double value, __) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${value.round()}%',
                            ),
                            Text(
                              'Returning Customer',
                            ),
                          ],
                        )),
              ),
            ),
          ),
          Column(
            children: [
              ProgressSale(
                title: 'Brooklyn, New York',
                step: 5,
                val: "80%",
              ),
              ProgressSale(
                title: 'The Castro, San Francisco',
                step: 3,
                val: "60%",
              ),
              ProgressSale(
                title: 'Kovan, Singapore',
                step: 2,
                val: "20%",
              )
            ],)
        ],
      ),
    );
  }
}
