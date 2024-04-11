import '../../backend/structs/index.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future disconnectDevice(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  try {
    await device.disconnect();
  } catch (e) {
    print(e);
  }
}
