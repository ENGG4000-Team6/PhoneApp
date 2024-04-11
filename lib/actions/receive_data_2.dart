
import '../../backend/structs/index.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'dart:async';
import '../stream_controller.dart';

// Future<String?> receiveData2(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     if (service.uuid.toString() == "1e400001-b5a3-f393-e0a9-e50e24dcca9e") {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         if (characteristic.uuid.toString() ==
//             "1e400002-b5a3-f393-e0a9-e50e24dcca9e") {
//           if (characteristic.properties.indicate) {
//             await characteristic.setNotifyValue(true);
//             characteristic.value.listen((value) {
//               // Convert received values to int (not ascii)
//               int intValue = int.parse(String.fromCharCodes(
//                   value)); // Parse the character codes into a single integer
//               List<int> resultList = [intValue]; // Store the integer in a list
//               addDataToStream2(resultList);
//            //   print('Received Data: $resultList');
//               // addDataToStream(value);
//             });
//             return null;
//           } else {
//             return "Characteristic does not support indications";
//           }
//         }
//       }
//     }
//   }
//   // Return null if the desired characteristic is not found
//   return null;
// }

Future<String?> receiveData2(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    if (service.uuid.toString() == "1e400001-b5a3-f393-e0a9-e50e24dcca9e") {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.uuid.toString() ==
            "1e400002-b5a3-f393-e0a9-e50e24dcca9e") {
          if (characteristic.properties.indicate) {
            await characteristic.setNotifyValue(true);
            characteristic.value.listen((value) {
              List<int> receivedData = value;
              List<int> resultList = [];
              print(receivedData.length);
              // Parse receivedData into individual integers
              for (int i = 0; i < receivedData.length; i += 2) {
                int intValue = (receivedData[i] << 8) + receivedData[i + 1];
                resultList.add(intValue);
              }

              //               int intValue = int.parse(String.fromCharCodes(
              //     value)); // Parse the character codes into a single integer
              // List<int> resultList = [intValue]; // Store the integer in a list
              // Store the integers in a list
              addDataToStream2(resultList);
              // Get current timestamp
              DateTime now = DateTime.now();
              String timestamp = now.toIso8601String();
              print('Received Data at $timestamp: $resultList');
            });
            return null;
          } else {
            return "Characteristic does not support indications";
          }
        }
      }
    }
  }
  // Return null if the desired characteristic is not found
  return null;
}
