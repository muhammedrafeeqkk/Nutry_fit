import 'package:flutter/cupertino.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:pie_chart/pie_chart.dart';

Widget pieCHartWidget(double screenwidth) {
  return PieChart(
    gradientList: const [
      [
        Color.fromARGB(255, 255, 255, 255),
        Color.fromARGB(255, 255, 253, 253),
      ],
      [
        Color.fromARGB(255, 255, 168, 199),
        Color.fromARGB(255, 223, 133, 255),
      ],
    ],

    //totalValue: 100,
    legendOptions: const LegendOptions(showLegends: false),
    dataMap: dataMap,
    animationDuration: Duration(milliseconds: 800),
    chartLegendSpacing: 32,
    chartRadius: screenwidth * 0.3,
    chartValuesOptions: ChartValuesOptions(
      chartValueBackgroundColor: black,
      chartValueStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      showChartValueBackground: false,
      showChartValues: true,
      showChartValuesInPercentage: true,
      decimalPlaces: 1,
    ),
  );
}

Map<String, double> dataMap = {
  "Total": 79,
  "BMI": 21,
};
