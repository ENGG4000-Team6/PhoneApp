import '/flutter_flow/flutter_flow_util.dart';
import '../../flutter_flow/instant_timer.dart';
import '../bluetooth_widgets/display_received_data/display_received_data_widget.dart';
import '../bluetooth_widgets/strength_indicator/strength_indicator_widget.dart';
import 'bluetooth_backend_widget.dart' show BluetoothBackendWidget;
import 'package:flutter/material.dart';

class BluetoothBackendModel extends FlutterFlowModel<BluetoothBackendWidget> {

  int? currentRssi;

  String? receivedValue;

  final unfocusNode = FocusNode();
  InstantTimer? rssiUpdateTimer;
  int? updatedRssi;
  late StrengthIndicatorModel strengthIndicatorModel;
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  late DisplayReceivedDataModel displayReceivedDataModel;

  void initState(BuildContext context) {
    strengthIndicatorModel =
        createModel(context, () => StrengthIndicatorModel());
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
  }

  void dispose() {
    unfocusNode.dispose();
    rssiUpdateTimer?.cancel();
    strengthIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    displayReceivedDataModel.dispose();
  }

  /// More action blocks if necessary?
}
