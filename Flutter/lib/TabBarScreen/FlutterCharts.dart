// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';

// // Define a model class for the chart data
// class SalesData {
//   final String year;
//   final int sales;

//   SalesData(this.year, this.sales);
// }

// class SimpleBarChart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Data for the bar chart
//     final data = [
//       SalesData('2018', 5),
//       SalesData('2019', 25),
//       SalesData('2020', 100),
//       SalesData('2021', 75),
//       SalesData('2022', 50),
//     ];

//     // Convert the data into a series
//     var series = [
//       charts.Series<SalesData, String>(
//         id: 'Sales',
//         domainFn: (SalesData sales, _) => sales.year,
//         measureFn: (SalesData sales, _) => sales.sales,
//         data: data,
//         labelAccessorFn: (SalesData sales, _) => '${sales.sales}',
//       )
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Simple Clutter-Free Bar Chart'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: charts.BarChart(
//           series,
//           animate: true,
//           vertical: false,
//           barRendererDecorator: charts.BarLabelDecorator<String>(), // Adds labels to bars
//           domainAxis: charts.OrdinalAxisSpec(
//             showAxisLine: false, // Hides axis line
//             renderSpec: charts.NoneRenderSpec(), // Hides axis grid
//           ),
//           primaryMeasureAxis: charts.NumericAxisSpec(
//             showAxisLine: false, // Hides axis line
//             renderSpec: charts.NoneRenderSpec(), // Hides axis grid
//           ),
//         ),
//       ),
//     );
//   }
// }

