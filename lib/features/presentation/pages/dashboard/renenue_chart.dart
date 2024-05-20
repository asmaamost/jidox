import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jidox/features/presentation/pages/dashboard/revenu_header.dart';
import 'package:jidox/features/utils/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Revenu_chart extends StatefulWidget {
  const Revenu_chart({super.key});

  @override
  State<Revenu_chart> createState() => _Revenu_chartState();
}

class _Revenu_chartState extends State<Revenu_chart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Jan', 12),
      _ChartData('Feb', 15),
      _ChartData('March', 30),
      _ChartData('April', 6.4),
      _ChartData('May', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
      //height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsetsDirectional.all(15),
              child: Text(
                'Revenue',
                style: TextStyle(color: darkColor, fontSize: 18),
              )),
          RevenuHeader(),
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
              tooltipBehavior: _tooltip,
              series: <CartesianSeries<_ChartData, String>>[
                ColumnSeries<_ChartData, String>(
                    dataSource: data,
                    xValueMapper: (_ChartData data, _) => data.x,
                    yValueMapper: (_ChartData data, _) => data.y,
                    name: 'Gold',
                    color: Color.fromRGBO(8, 142, 255, 1))
              ]),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
