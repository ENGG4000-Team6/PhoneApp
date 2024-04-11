import '../../backend/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

// Future<Map<String, bool>> connectDevice(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   try {
//     await device.connect();
//   } catch (e) {
//     print(e);
//     return {'hasWriteCharacteristic': false, 'hasReadCharacteristic': false};
//   }

//   var hasWriteCharacteristic = false;
//   var hasReadCharacteristic = false;

//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     for (BluetoothCharacteristic characteristic in service.characteristics) {
//       final isWrite = characteristic.properties.write;
//       final isRead = characteristic.properties.read;

//       if (isWrite) {
//         debugPrint(
//             'Found write characteristic: ${characteristic.uuid}, ${characteristic.properties}');
//         hasWriteCharacteristic = true;
//       }

//       if (isRead) {
//         debugPrint(
//             'Found read characteristic: ${characteristic.uuid}, ${characteristic.properties}');
//         hasReadCharacteristic = true;
//       }
//     }
//   }
//   return {'hasWriteCharacteristic': hasWriteCharacteristic, 'hasReadCharacteristic': hasReadCharacteristic};
// }

Future<Map<String, bool>> connectDevice(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  try {
    await device.connect();
  } catch (e) {
    print(e);
    return {'hasWriteCharacteristic': false, 'hasReadCharacteristic': false};
  }

  var hasWriteCharacteristic = false;
  var hasReadCharacteristic = false;

  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    // Print the UUID of each service
    print('Service UUID: ${service.uuid}');

    for (BluetoothCharacteristic characteristic in service.characteristics) {
      final isWrite = characteristic.properties.write;
      final isRead = characteristic.properties.read;

      if (isWrite) {
        debugPrint(
            'Found write characteristic: ${characteristic.uuid}, ${characteristic.properties}');
        hasWriteCharacteristic = true;
      }

      if (isRead) {
        debugPrint(
            'Found read characteristic: ${characteristic.uuid}, ${characteristic.properties}');
        hasReadCharacteristic = true;
      }
    }
  }
  return {'hasWriteCharacteristic': hasWriteCharacteristic, 'hasReadCharacteristic': hasReadCharacteristic};
}