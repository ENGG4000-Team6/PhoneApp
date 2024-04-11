import '../../../backend/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../../../flutter_flow/instant_timer.dart';
import '../../../actions/action_index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'display_received_data_model.dart';
export 'display_received_data_model.dart';
import '../../../actions/receive_data.dart';
import '../../../actions/receive_data_2.dart';
import '../../../actions/receive_data_3.dart';

class DisplayReceivedDataWidget extends StatefulWidget {
  const DisplayReceivedDataWidget({
    super.key,
    this.device,
  });

  final BTDeviceStruct? device;

  @override
  State<DisplayReceivedDataWidget> createState() =>
      _DisplayReceivedDataWidgetState();
}

class _DisplayReceivedDataWidgetState extends State<DisplayReceivedDataWidget> {
  late DisplayReceivedDataModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplayReceivedDataModel());

    // _model.receivedDataTimer = InstantTimer.periodic(
    //   duration: Duration(milliseconds: 10),
    //   callback: (timer) async {
    //     //   print("Fetching received data...");
    //     //BluetoothDataReceiver receiver = BluetoothDataReceiver();
    //     _model.receivedData1 = await receiveData(
    //       widget.device!,
    //     );
    //     _model.receivedData2 = await receiveData2(
    //       widget.device!,
    //     );
    //     _model.receivedData2 = await receiveData3(
    //       widget.device!,
    //     );
    //     //  print("Received data: ${_model.receivedData}");
    //     setState(() {
    //       _model.data = _model.receivedData1;
    //       _model.data2 = _model.receivedData2;
    //       _model.data3 = _model.receivedData3;
    //       //_model.data = "hey bu";
    //     });
    //   },
    //   startImmediately: true,
    // );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Received data',
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.w600,
              ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              _model.data,
              '-',
            ),
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Montserrat',
                  lineHeight: 1.4,
                ),
          ),
        ),
      ],
    );
  }
}
