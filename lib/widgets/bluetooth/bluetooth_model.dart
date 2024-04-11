import '../../backend/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bluetooth_widget.dart' show BluetoothWidget;
import 'package:flutter/material.dart';

class BluetoothModel extends FlutterFlowModel<BluetoothWidget> {

  bool isFetchingDevices = false;

  bool isBluetoothEnabled = false;

  List<BTDeviceStruct> foundDevices = [];
  void addToFoundDevices(BTDeviceStruct item) => foundDevices.add(item);
  void removeFromFoundDevices(BTDeviceStruct item) => foundDevices.remove(item);
  void removeAtIndexFromFoundDevices(int index) => foundDevices.removeAt(index);
  void insertAtIndexInFoundDevices(int index, BTDeviceStruct item) =>
      foundDevices.insert(index, item);
  void updateFoundDevicesAtIndex(
          int index, Function(BTDeviceStruct) updateFn) =>
      foundDevices[index] = updateFn(foundDevices[index]);

  List<BTDeviceStruct> connectedDevices = [];
  void addToConnectedDevices(BTDeviceStruct item) => connectedDevices.add(item);
  void removeFromConnectedDevices(BTDeviceStruct item) =>
      connectedDevices.remove(item);
  void removeAtIndexFromConnectedDevices(int index) =>
      connectedDevices.removeAt(index);
  void insertAtIndexInConnectedDevices(int index, BTDeviceStruct item) =>
      connectedDevices.insert(index, item);
  void updateConnectedDevicesAtIndex(
          int index, Function(BTDeviceStruct) updateFn) =>
      connectedDevices[index] = updateFn(connectedDevices[index]);

  bool? isFetchingConnectedDevices = false;

  final unfocusNode = FocusNode();
  List<BTDeviceStruct>? fetchedConnectedDevices;
  List<BTDeviceStruct>? fetchedDevices;
  bool? switchValue;
  List<BTDeviceStruct>? fetchedConnectedDevicesCopy;
  List<BTDeviceStruct>? fetchedDevicesCopy;
  bool? hasWrite;


  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }
  
}
