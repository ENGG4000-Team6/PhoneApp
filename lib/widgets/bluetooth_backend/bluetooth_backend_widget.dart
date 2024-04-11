import '../../../backend/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../../flutter_flow/instant_timer.dart';
import '../bluetooth_widgets/display_received_data/display_received_data_widget.dart';
import '../bluetooth_widgets/strength_indicator/strength_indicator_widget.dart';
import '../../../actions/action_index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'bluetooth_backend_model.dart';
export 'bluetooth_backend_model.dart';
import '../../../actions/receive_data.dart';
import '../../../actions/receive_data_2.dart';
import '../../../actions/receive_data_3.dart';

// class BluetoothBackendWidget extends StatefulWidget {
//   const BluetoothBackendWidget({
//     Key? key,
//     required this.deviceName,
//     required this.deviceId,
//     required this.deviceRssi,
//     required this.hasWriteCharacteristic,
//   }) : super(key: key);

//   final String? deviceName;
//   final String? deviceId;
//   final int? deviceRssi;
//   final bool? hasWriteCharacteristic;

//   @override
//   State<BluetoothBackendWidget> createState() => _BluetoothBackendWidgetState();
// }

// class _BluetoothBackendWidgetState extends State<BluetoothBackendWidget> {
//   late BluetoothBackendModel _model;
//   late DisplayReceivedDataModel _displayReceivedDataModel;
//   late BTDeviceStruct _device;

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => BluetoothBackendModel());
//     _displayReceivedDataModel =
//         createModel(context, () => DisplayReceivedDataModel());

//     _device = BTDeviceStruct(
//       name: widget.deviceName,
//       id: widget.deviceId,
//       rssi: widget.deviceRssi,
//     );

//     SchedulerBinding.instance!.addPostFrameCallback((_) async {
//       _model.rssiUpdateTimer = InstantTimer.periodic(
//         duration: const Duration(milliseconds: 2000),
//         callback: (timer) async {
//           _model.updatedRssi = await actions.getRssi(_device);
//           setState(() {
//             _model.currentRssi = _model.updatedRssi;
//           });
//         },
//         startImmediately: true,
//       );

//       // Start receiving data
//       _displayReceivedDataModel.receivedDataTimer = InstantTimer.periodic(
//         duration: const Duration(milliseconds: 100),
//         callback: (timer) async {
//         //  BluetoothDataReceiver receiver = BluetoothDataReceiver();
//           _displayReceivedDataModel.receivedData1 =
//               await receiveData(_device);
//            _displayReceivedDataModel.receivedData2 =
//               await receiveData2(_device);
//           _displayReceivedDataModel.receivedData3 =
//               await receiveData3(_device);
//           setState(() {

//             // Update UI or perform any action with the received data
//           });
//         },
//         startImmediately: true,
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _model.dispose();
//     _displayReceivedDataModel.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Navigate back to the home page immediately
//     context.safePop();
//     print("backend");

//     // Since we're not using UI for displaying received data, return an empty widget
//     return SizedBox.shrink();
//   }
// }



class BluetoothBackendWidget extends StatefulWidget {
  const BluetoothBackendWidget({
    Key? key,
    required this.deviceName,
    required this.deviceId,
    required this.deviceRssi,
    required this.hasWriteCharacteristic,
  }) : super(key: key);

  final String? deviceName;
  final String? deviceId;
  final int? deviceRssi;
  final bool? hasWriteCharacteristic;

  @override
  State<BluetoothBackendWidget> createState() => _BluetoothBackendWidgetState();
}

class _BluetoothBackendWidgetState extends State<BluetoothBackendWidget> {
  late BluetoothBackendModel _model;
  late DisplayReceivedDataModel _displayReceivedDataModel;
  late BTDeviceStruct _device;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BluetoothBackendModel());
    _displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());

    _device = BTDeviceStruct(
      name: widget.deviceName,
      id: widget.deviceId,
      rssi: widget.deviceRssi,
    );

//     SchedulerBinding.instance!.addPostFrameCallback((_) async {
//       // _model.rssiUpdateTimer = InstantTimer.periodic(
//       //   duration: const Duration(milliseconds: 2000),
//       //   callback: (timer) async {
//       //     _model.updatedRssi = await actions.getRssi(_device);
//       //     setState(() {
//       //       _model.currentRssi = _model.updatedRssi;
//       //     });
//       //   },
//       //   startImmediately: true,
//       // );

//       // Call receiveData to start listening for incoming data
//  //     receiveData(_device);
//       receiveData2(_device);
//   //    receiveData3(_device);
//     });
//   }
    SchedulerBinding.instance!.addPostFrameCallback((_) async {
      _model.rssiUpdateTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 2000),
        callback: (timer) async {
          _model.updatedRssi = await actions.getRssi(_device);
          setState(() {
            _model.currentRssi = _model.updatedRssi;
          });
        },
        startImmediately: true,
      );

      // Start receiving data
      _displayReceivedDataModel.receivedDataTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 100),
        callback: (timer) async {
        //  BluetoothDataReceiver receiver = BluetoothDataReceiver();
          _displayReceivedDataModel.receivedData1 =
              await receiveData(_device);
           _displayReceivedDataModel.receivedData2 =
              await receiveData2(_device);
          _displayReceivedDataModel.receivedData3 =
              await receiveData3(_device);
          setState(() {

            // Update UI or perform any action with the received data
          });
        },
        startImmediately: true,
      );
    });
  }


  @override
  void dispose() {
    _model.dispose();
    _displayReceivedDataModel.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Navigate back to the home page immediately
    context.safePop();
    print("backend");

    // Since we're not using UI for displaying received data, return an empty widget
    return SizedBox.shrink();
  }
}







// class BluetoothBackendWidget extends StatefulWidget {
//   const BluetoothBackendWidget({
//     super.key,
//     required this.deviceName,
//     required this.deviceId,
//     required this.deviceRssi,
//     required this.hasWriteCharacteristic,
//   });

//   final String? deviceName;
//   final String? deviceId;
//   final int? deviceRssi;
//   final bool? hasWriteCharacteristic;

//   @override
//   State<BluetoothBackendWidget> createState() => _BluetoothBackendWidgetState();
// }

// class _BluetoothBackendWidgetState extends State<BluetoothBackendWidget> {
//   late BluetoothBackendModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => BluetoothBackendModel());
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       setState(() {
//         _model.currentRssi = widget.deviceRssi;
//       });
//       _model.rssiUpdateTimer = InstantTimer.periodic(
//         duration: Duration(milliseconds: 2000),
//         callback: (timer) async {
//           _model.updatedRssi = await actions.getRssi(
//             BTDeviceStruct(
//               name: widget.deviceName,
//               id: widget.deviceId,
//               rssi: widget.deviceRssi,
//             ),
//           );
//           setState(() {
//             _model.currentRssi = _model.updatedRssi;
//           });
//         },
//         startImmediately: true,
//       );
//     });

//     _model.textController ??= TextEditingController();
//     _model.textFieldFocusNode ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isiOS) {
//       SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(
//           statusBarBrightness: Theme.of(context).brightness,
//           systemStatusBarContrastEnforced: true,
//         ),
//       );
//     }

//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         appBar: AppBar(
//           backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//           iconTheme:
//               IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
//           automaticallyImplyLeading: true,
//           title: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Padding(
//                     padding:
//                         EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
//                     child: Text(
//                       widget.deviceName!,
//                       style: FlutterFlowTheme.of(context).titleLarge.override(
//                             fontFamily: 'Montserrat',
//                             fontSize: 18.0,
//                           ),
//                     ),
//                   ),
//                   if (_model.currentRssi != null)
//                     wrapWithModel(
//                       model: _model.strengthIndicatorModel,
//                       updateCallback: () => setState(() {}),
//                       child: StrengthIndicatorWidget(
//                         rssi: _model.currentRssi!,
//                         color: valueOrDefault<Color>(
//                           () {
//                             if (_model.currentRssi! >= -67) {
//                               return FlutterFlowTheme.of(context).success;
//                             } else if (_model.currentRssi! >= -90) {
//                               return FlutterFlowTheme.of(context).warning;
//                             } else {
//                               return FlutterFlowTheme.of(context).error;
//                             }
//                           }(),
//                           FlutterFlowTheme.of(context).success,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
//                 child: Text(
//                   widget.deviceId!,
//                   style: FlutterFlowTheme.of(context).labelSmall,
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             Container(
//               height: 200.0,
//               decoration: BoxDecoration(),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   FlutterFlowIconButton(
//                     borderColor: Colors.transparent,
//                     borderRadius: 20.0,
//                     buttonSize: 45.0,
//                     icon: Icon(
//                       Icons.bluetooth_disabled_rounded,
//                       color: FlutterFlowTheme.of(context).error,
//                       size: 28.0,
//                     ),
//                     onPressed: () async {
//                       await actions.disconnectDevice(
//                         BTDeviceStruct(
//                           name: widget.deviceName,
//                           id: widget.deviceId,
//                           rssi: _model.currentRssi,
//                         ),
//                       );
//                       context.safePop();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//           centerTitle: false,
//           elevation: 0.0,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'You can send data to the connected device and receive data back from it.',
//                   style: FlutterFlowTheme.of(context).labelMedium.override(
//                         fontFamily: 'Montserrat',
//                         lineHeight: 1.4,
//                       ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           width: double.infinity,
//                           child: TextFormField(
//                             controller: _model.textController,
//                             focusNode: _model.textFieldFocusNode,
//                             obscureText: false,
//                             decoration: InputDecoration(
//                               hintText: 'Enter data to send...',
//                               hintStyle:
//                                   FlutterFlowTheme.of(context).labelLarge,
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(10.0),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(10.0),
//                               ),
//                               errorBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: FlutterFlowTheme.of(context).error,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(10.0),
//                               ),
//                               focusedErrorBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: FlutterFlowTheme.of(context).error,
//                                   width: 2.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(10.0),
//                               ),
//                               filled: true,
//                               fillColor: FlutterFlowTheme.of(context).accent1,
//                             ),
//                             style: FlutterFlowTheme.of(context).bodyLarge,
//                             validator: _model.textControllerValidator
//                                 .asValidator(context),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
//                         child: FlutterFlowIconButton(
//                           borderColor: Colors.transparent,
//                           borderRadius: 30.0,
//                           buttonSize: 50.0,
//                           fillColor: FlutterFlowTheme.of(context).primary,
//                           icon: Icon(
//                             Icons.send_rounded,
//                             color: Colors.white,
//                             size: 24.0,
//                           ),
//                           showLoadingIndicator: true,
//                           onPressed: () async {
//                             await actions.sendData(
//                               BTDeviceStruct(
//                                 name: widget.deviceName,
//                                 id: widget.deviceId,
//                                 rssi: _model.currentRssi,
//                               ),
//                               _model.textController.text,
//                             );
//                             ScaffoldMessenger.of(context).clearSnackBars();
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text(
//                                   'Data sent to device',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyLarge
//                                       .override(
//                                         fontFamily: 'Montserrat',
//                                         color: FlutterFlowTheme.of(context)
//                                             .primaryText,
//                                       ),
//                                 ),
//                                 duration: Duration(milliseconds: 2000),
//                                 backgroundColor:
//                                     FlutterFlowTheme.of(context).success,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
//                   child: wrapWithModel(
//                     model: _model.displayReceivedDataModel,
//                     updateCallback: () => setState(() {}),
//                     child: DisplayReceivedDataWidget(
//                       device: BTDeviceStruct(
//                         name: widget.deviceName,
//                         id: widget.deviceId,
//                         rssi: widget.deviceRssi,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
