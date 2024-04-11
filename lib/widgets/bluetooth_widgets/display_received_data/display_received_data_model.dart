import '/flutter_flow/flutter_flow_util.dart';
import '../../../flutter_flow/instant_timer.dart';
import 'display_received_data_widget.dart' show DisplayReceivedDataWidget;
import 'package:flutter/material.dart';

class DisplayReceivedDataModel
    extends FlutterFlowModel<DisplayReceivedDataWidget> {

  String? data;
  String? data2;
  String? data3;

  InstantTimer? receivedDataTimer;
  String? receivedData1;
  String? receivedData2;
  String? receivedData3;
  //List<int>? receivedData;

  void initState(BuildContext context) {}

  void dispose() {
    receivedDataTimer?.cancel();
  }
}
