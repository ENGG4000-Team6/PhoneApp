// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../stream_controller.dart';
// import 'package:fl_chart/fl_chart.dart';
// import '/flutter_flow/flutter_flow_theme.dart';

// class PlotWidget extends StatefulWidget {
//   const PlotWidget({Key? key}) : super(key: key);

//   @override
//   _PlotWidgetState createState() => _PlotWidgetState();
// }

// class _PlotWidgetState extends State<PlotWidget> {
//   static int maxVisibleDataPoints = 48; // Adjust this as needed
//   List<FlSpot> dataPoints = [];
//   bool isPaused = false;
//   double maxY = 10; // Initial value for maxY
//   double? zoomStartMaxY;
//   double? zoomStartMaxX;
//   double? touchStartY;
//   double? touchStartX;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         color: FlutterFlowTheme.of(context).secondaryBackground,
//         child: GestureDetector(
//           onScaleStart: (details) {
//             touchStartY = details.focalPoint.dy;
//             touchStartX = details.focalPoint.dx;
//             zoomStartMaxY = maxY;
//             zoomStartMaxX = maxVisibleDataPoints.toDouble();
//           },
//           onScaleUpdate: (details) {
//             double dy = details.focalPoint.dy - touchStartY!;
//             double dx = details.focalPoint.dx - touchStartX!;
//             double scalingFactorY = dy / context.size!.height;
//             double scalingFactorX = dx / context.size!.width;
//             maxY = (zoomStartMaxY! * (1 + scalingFactorY))
//                 .clamp(1, 100); // Adjust these limits as needed
//             maxVisibleDataPoints = (zoomStartMaxX! * (1 + scalingFactorX))
//                 .clamp(1, 100)
//                 .toInt(); // Adjust these limits as needed
//             setState(() {});
//           },
//           onScaleEnd: (details) {
//             touchStartY = null;
//             touchStartX = null;
//             zoomStartMaxY = null;
//             zoomStartMaxX = null;
//           },
//           child: Column(
//             children: [
//               // Buttons for pause and zoom
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         isPaused = !isPaused; // Toggle pause state
//                       });
//                     },
//                     icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: StreamBuilder<List<int>>(
//                   stream: isPaused
//                       ? null
//                       : dataStream1, // Pause stream when isPaused is true
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       List<int> dataList = snapshot.data!;
//                       updateDataPoints(dataList);
//                       // Create a line chart with the data points
//                       return LineChart(
//                         LineChartData(
//                           lineBarsData: [
//                             LineChartBarData(
//                               spots: dataPoints,
//                               isCurved: false,
//                               dotData: FlDotData(show: false),
//                               belowBarData: BarAreaData(show: false),
//                             ),
//                           ],
//                           borderData: FlBorderData(show: true),
//                           gridData: FlGridData(show: true),
//                           titlesData: FlTitlesData(show:false),
//                     // titlesData: FlTitlesData(
//                     //   leftTitles: SideTitles(showTitles: false),
//                     //   rightTitles: SideTitles(showTitles: true),
//                     //   bottomTitles: SideTitles(showTitles: false),
//                     //   topTitles: SideTitles(showTitles: false),
//                     // ),
//                           //  titles: SideTitles(showTitles: true),

//                           minX: 0, // Set the minimum value on the x-axis
//                           maxX: maxVisibleDataPoints
//                               .toDouble(), // Set the maximum value on the x-axis
//                           minY: 0, // Set the minimum value on the y-axis
//                           maxY: maxY, // Set the maximum value on the y-axis
//                         ),
//                       );
//                     } else {
//                       return Center(child: CircularProgressIndicator());
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void updateDataPoints(List<int> dataList) {
//     // Remove oldest data points if the number of data points exceeds the maximum visible data points
//     if (dataPoints.length > maxVisibleDataPoints) {
//       int numToRemove = dataPoints.length - maxVisibleDataPoints;
//       dataPoints.removeRange(0, numToRemove);
//     }

//     // Shift x-values of existing data points
//     for (int i = 0; i < dataPoints.length; i++) {
//       dataPoints[i] = FlSpot(i.toDouble(), dataPoints[i].y);
//     }

//     // Add new data points with clipped y-values
//     for (int i = 0; i < dataList.length; i++) {
//       double xValue = dataPoints.length.toDouble();
//       double yValue = dataList[i].toDouble();

//       // Clip y-value within the desired range (0 to maxY)
//       yValue = yValue.clamp(0, maxY);

//       dataPoints.add(FlSpot(xValue, yValue));
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../stream_controller.dart'; // Assuming this is where your data stream is defined
import '/flutter_flow/flutter_flow_theme.dart';

class PlotWidget extends StatefulWidget {
  const PlotWidget({Key? key}) : super(key: key);

  @override
  _PlotWidgetState createState() => _PlotWidgetState();
}

class _PlotWidgetState extends State<PlotWidget> {
  static const int maxVisibleDataPoints = 48;
  List<FlSpot> dataPoints = [];
  bool isPaused = false;
  double maxY = 3.3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        child: Column(
          children: [
            // Add controls for pause and zoom if needed
            Expanded(
              child: StreamBuilder<List<double>>(
                stream: isPaused ? null : dataStream1,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<double> dataList = snapshot.data!;
                    updateDataPoints(dataList);
                    return LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: dataPoints,
                            isCurved: false,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        borderData: FlBorderData(show: true),
                        gridData: FlGridData(show: true),
                        titlesData: FlTitlesData(show: false),
                        minX: 0,
                        maxX: maxVisibleDataPoints.toDouble(),
                        minY: 0,
                        maxY: maxY,
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void updateDataPoints(List<int> dataList) {
  //   // Clip y-values within the desired range (0 to maxY)
  //   dataList = dataList.map((value) => value.clamp(0, maxY.toInt())).toList();

  //   // Remove oldest data points if the number of data points exceeds the maximum visible data points
  //   if (dataPoints.length + dataList.length > maxVisibleDataPoints) {
  //     int numToRemove = dataPoints.length + dataList.length - maxVisibleDataPoints;
  //     dataPoints.removeRange(0, numToRemove);
  //   }

  //   // Shift x-values of existing data points
  //   for (int i = 0; i < dataPoints.length; i++) {
  //     dataPoints[i] = FlSpot(i.toDouble(), dataPoints[i].y);
  //   }

  //   // Add new data points
  //   double startXValue = dataPoints.isEmpty ? 0 : dataPoints.last.x + 1;
  //   for (int i = 0; i < dataList.length; i++) {
  //     double xValue = startXValue + i;
  //     double yValue = dataList[i].toDouble();
  //     dataPoints.add(FlSpot(xValue, yValue));
  //   }
  // }
  void updateDataPoints(List<double> dataList) {
  // Clip y-values within the desired range (0 to maxY)
 // dataList = dataList.map((value) => value.clamp(0, maxY)).toList();
dataList = dataList.map((value) => value.clamp(0, maxY)).toList().cast<double>();
  // Remove oldest data points if the number of data points exceeds the maximum visible data points
  if (dataPoints.length + dataList.length > maxVisibleDataPoints) {
    int numToRemove = dataPoints.length + dataList.length - maxVisibleDataPoints;
    dataPoints.removeRange(0, numToRemove);
  }

  // Shift x-values of existing data points
  for (int i = 0; i < dataPoints.length; i++) {
    dataPoints[i] = FlSpot(i.toDouble(), dataPoints[i].y);
  }

  // Add new data points
  double startXValue = dataPoints.isEmpty ? 0 : dataPoints.last.x + 1;
  for (int i = 0; i < dataList.length; i++) {
    double xValue = startXValue + i;
    double yValue = dataList[i];
    dataPoints.add(FlSpot(xValue, yValue));
  }
}
}