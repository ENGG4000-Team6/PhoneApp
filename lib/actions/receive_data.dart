// // bool _isReading =
// //     false; // Flag to track whether a read operation is in progress

// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   if (_isReading) {
// //     print("A read operation is already in progress");
// //     return null;
// //   }

// //   _isReading = true;

// //   try {
// //     final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //     final services = await device.discoverServices();
// //     for (BluetoothService service in services) {
// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //         final isRead = characteristic.properties.read;
// //         final isNotify = characteristic.properties.notify;
// //         if (isNotify) {
// //           await characteristic.setNotifyValue(true); // Enable notifications
// //           characteristic.value.listen((value) {
// //             print("Received data: $value");
// //             // Process and return the received data
// //           });
// //           return null; // Return null as data will be received asynchronously
// //         }
// //       }
// //     }
// //     return null; // Return null if no suitable characteristic is found
// //   } catch (e) {
// //     print("Error during data reception: $e");
// //     return null;
// //   } finally {
// //     _isReading = false;
// //   }
// // }

// //new to get rid of write error
// // bool _isReading =
// //     false; // Flag to track whether a read operation is in progress

// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   // Check if a read operation is already in progress
// //   if (_isReading) {
// //     print("A read operation is already in progress");
// //     return null; // Return null to indicate that a read operation is already ongoing
// //   }

// //   // Set the flag to indicate that a read operation is starting
// //   _isReading = true;

// //   try {
// //     final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //     final services = await device.discoverServices();
// //     for (BluetoothService service in services) {
// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //         final isRead = characteristic.properties.read;
// //         final isNotify = characteristic.properties.notify;
// //         if (isRead && isNotify) {
// //           final value = await characteristic.read();
// //           if (value == null) {
// //             print("Received null data");
// //             return null;
// //           }
// //           print(value);
// //           return String.fromCharCodes(value);
// //         }
// //       }
// //     }
// //     return null; // Return null if no suitable characteristic is found
// //   } catch (e) {
// //     print("Error during data reception: $e");
// //     return null;
// //   } finally {
// //     // Reset the flag to indicate that the read operation has finished
// //     _isReading = false;
// //   }
// // }

// //old and trusty **working with 2 letters (sometimes back to back)
// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //   final services = await device.discoverServices();
// //   for (BluetoothService service in services) {
// //     for (BluetoothCharacteristic characteristic in service.characteristics) {
// //       final isRead = characteristic.properties.read;
// //       final isNotify = characteristic.properties.notify;
// //       if (isRead && isNotify) {
// //         final value = await characteristic.read();
// //         if (value == null) {
// //           print("null bitch");
// //         }
// //         print(value);
// //         return String.fromCharCodes(value);
// //       }
// //     }
// //   }
// //   return null;
// // }

// // original
// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //   final services = await device.discoverServices();
// //   for (BluetoothService service in services) {
// //     for (BluetoothCharacteristic characteristic in service.characteristics) {
// //       final isRead = characteristic.properties.read;
// //       final isNotify = characteristic.properties.notify;
// //       if (isRead && isNotify) {
// //         final value = await characteristic.read();
// //         print("Received data raw: ${value}");
// //         print("Received data raw: ${String.fromCharCodes(value)}");
// //         return String.fromCharCodes(value);
// //       }
// //     }
// //   }
// //   return null;
// // }

// //checking characteristics
// // import 'package:uuid/uuid.dart';

// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //   final services = await device.discoverServices();

// //   // Print the UUIDs of the discovered services
// //   // for (BluetoothService service in services) {
// //   //   print("Discovered service UUID: ${service.uuid}");
// //   // }

// //   // Define the UUID of the service you want to target
// //   final targetServiceUuid = "6e400001-b5a3-f393-e0a9-e50e24dcca9e";

// //   for (BluetoothService service in services) {
// //     // Check if the service UUID matches the target UUID
// //     if (service.uuid.toString() == targetServiceUuid.toString()) {
// //       print("found!!");

// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //       print("Discovered service UUID: ${service.characteristics}");
// //       }

// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //         final isRead = characteristic.properties.read;
// //         final isNotify = characteristic.properties.notify;
// //         if (isRead && isNotify) {
// //           final value = await characteristic.read();
// //           print("Received data raw: ${value}");
// //           print("Received data raw: ${String.fromCharCodes(value)}");
// //           return String.fromCharCodes(value);
// //         }
// //       }
// //     }
// //   }
// //   return null;
// // }

// import '../../backend/structs/index.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';
// import 'dart:async';
// import '../stream_controller.dart';

// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         if (characteristic.uuid.toString() ==
//             "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
//           if (characteristic.properties.indicate) {
//             await characteristic.setNotifyValue(true);
//             characteristic.value.listen((value) {
//               List<int> receivedData = value;
//               List<double> resultList = [];
//               print(receivedData.length);
//               //   Parse receivedData into individual integers
//               for (int i = 0; i < receivedData.length; i += 2) {
//                 int intValue = (receivedData[i] << 8) + receivedData[i+1];
//                 double doubleValue = ((intValue * 3.3) / 1024);
//                 resultList.add(doubleValue);
//               }
//               //               int intValue = int.parse(String.fromCharCodes(
//               //     value)); // Parse the character codes into a single integer
//               // List<int> resultList = [intValue]; // Store the integer in a list
//               // Store the integers in a list
//               addDataToStream1(resultList);
//               // Get current timestamp
//               DateTime now = DateTime.now();
//               String timestamp = now.toIso8601String();
//               print('Received Data at $receivedData');
//               print('Received Data at $timestamp: $resultList');
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

// //10 at a time
// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //   final services = await device.discoverServices();
// //   for (BluetoothService service in services) {
// //     if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //         if (characteristic.uuid.toString() ==
// //             "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
// //           if (characteristic.properties.indicate) {
// //             await characteristic.setNotifyValue(true);
// //             characteristic.value.listen((value) {
// //               List<int> receivedData = value;
// //               List<int> resultList = [];
// //               // Parse receivedData into individual integers
// //               for (int i = 0; i < receivedData.length; i += 4) {
// //                 int intValue = (receivedData[i] << 24) +
// //                     (receivedData[i + 1] << 16) +
// //                     (receivedData[i + 2] << 8) +
// //                     receivedData[i + 3];
// //                 resultList.add(intValue);
// //               }
// //               // Store the integers in a list
// //               addDataToStream1(resultList);
// //               // Get current timestamp
// //               DateTime now = DateTime.now();
// //               String timestamp = now.toIso8601String();
// //               print('Received Data at $timestamp: $resultList');
// //             });
// //             return null;
// //           } else {
// //             return "Characteristic does not support indications";
// //           }
// //         }
// //       }
// //     }
// //   }
// //   // Return null if the desired characteristic is not found
// //   return null;
// // }


// // 1 at a time
// // Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
// //   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
// //   final services = await device.discoverServices();
// //   for (BluetoothService service in services) {
// //     if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
// //       for (BluetoothCharacteristic characteristic in service.characteristics) {
// //         if (characteristic.uuid.toString() ==
// //             "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
// //           if (characteristic.properties.indicate) {
// //             await characteristic.setNotifyValue(true);
// //             characteristic.value.listen((value) {
// //               // Convert received values to int (not ascii)
// //               int intValue = int.parse(String.fromCharCodes(
// //                   value)); // Parse the character codes into a single integer
// //               List<int> resultList = [intValue]; // Store the integer in a list
// //               addDataToStream1(resultList);
// //                             // Get current timestamp
// //               DateTime now = DateTime.now();
// //               String timestamp = now.toIso8601String();
// //              print('Received Data at $timestamp: $resultList');
// //               // addDataToStream(value);
// //             });
// //             return null;
// //           } else {
// //             return "Characteristic does not support indications";
// //           }
// //         }
// //       }
// //     }
// //   }
// //   // Return null if the desired characteristic is not found
// //   return null;
// // }





// bool _isReading =
//     false; // Flag to track whether a read operation is in progress

// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   if (_isReading) {
//     print("A read operation is already in progress");
//     return null;
//   }

//   _isReading = true;

//   try {
//     final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//     final services = await device.discoverServices();
//     for (BluetoothService service in services) {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         final isRead = characteristic.properties.read;
//         final isNotify = characteristic.properties.notify;
//         if (isNotify) {
//           await characteristic.setNotifyValue(true); // Enable notifications
//           characteristic.value.listen((value) {
//             print("Received data: $value");
//             // Process and return the received data
//           });
//           return null; // Return null as data will be received asynchronously
//         }
//       }
//     }
//     return null; // Return null if no suitable characteristic is found
//   } catch (e) {
//     print("Error during data reception: $e");
//     return null;
//   } finally {
//     _isReading = false;
//   }
// }

//new to get rid of write error
// bool _isReading =
//     false; // Flag to track whether a read operation is in progress

// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   // Check if a read operation is already in progress
//   if (_isReading) {
//     print("A read operation is already in progress");
//     return null; // Return null to indicate that a read operation is already ongoing
//   }

//   // Set the flag to indicate that a read operation is starting
//   _isReading = true;

//   try {
//     final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//     final services = await device.discoverServices();
//     for (BluetoothService service in services) {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         final isRead = characteristic.properties.read;
//         final isNotify = characteristic.properties.notify;
//         if (isRead && isNotify) {
//           final value = await characteristic.read();
//           if (value == null) {
//             print("Received null data");
//             return null;
//           }
//           print(value);
//           return String.fromCharCodes(value);
//         }
//       }
//     }
//     return null; // Return null if no suitable characteristic is found
//   } catch (e) {
//     print("Error during data reception: $e");
//     return null;
//   } finally {
//     // Reset the flag to indicate that the read operation has finished
//     _isReading = false;
//   }
// }

//old and trusty **working with 2 letters (sometimes back to back)
// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     for (BluetoothCharacteristic characteristic in service.characteristics) {
//       final isRead = characteristic.properties.read;
//       final isNotify = characteristic.properties.notify;
//       if (isRead && isNotify) {
//         final value = await characteristic.read();
//         if (value == null) {
//           print("null bitch");
//         }
//         print(value);
//         return String.fromCharCodes(value);
//       }
//     }
//   }
//   return null;
// }

// original
// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     for (BluetoothCharacteristic characteristic in service.characteristics) {
//       final isRead = characteristic.properties.read;
//       final isNotify = characteristic.properties.notify;
//       if (isRead && isNotify) {
//         final value = await characteristic.read();
//         print("Received data raw: ${value}");
//         print("Received data raw: ${String.fromCharCodes(value)}");
//         return String.fromCharCodes(value);
//       }
//     }
//   }
//   return null;
// }

//checking characteristics
// import 'package:uuid/uuid.dart';

// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();

//   // Print the UUIDs of the discovered services
//   // for (BluetoothService service in services) {
//   //   print("Discovered service UUID: ${service.uuid}");
//   // }

//   // Define the UUID of the service you want to target
//   final targetServiceUuid = "6e400001-b5a3-f393-e0a9-e50e24dcca9e";

//   for (BluetoothService service in services) {
//     // Check if the service UUID matches the target UUID
//     if (service.uuid.toString() == targetServiceUuid.toString()) {
//       print("found!!");

//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//       print("Discovered service UUID: ${service.characteristics}");
//       }

//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         final isRead = characteristic.properties.read;
//         final isNotify = characteristic.properties.notify;
//         if (isRead && isNotify) {
//           final value = await characteristic.read();
//           print("Received data raw: ${value}");
//           print("Received data raw: ${String.fromCharCodes(value)}");
//           return String.fromCharCodes(value);
//         }
//       }
//     }
//   }
//   return null;
// }

import '../../backend/structs/index.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'dart:async';
import '../stream_controller.dart';

Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
  final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
  final services = await device.discoverServices();
  for (BluetoothService service in services) {
    if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.uuid.toString() ==
            "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
          if (characteristic.properties.indicate) {
            await characteristic.setNotifyValue(true);
            characteristic.value.listen((value) {
              List<int> receivedData = value;
              List<double> resultList = [];
              print(receivedData.length);
              //   Parse receivedData into individual integers
              for (int i = 0; i < receivedData.length; i += 2) {
                int intValue = (receivedData[i] << 8) + receivedData[i+1];
                double doubleValue = ((intValue * 3.3) / 1024);
                resultList.add(doubleValue);
              }
              //               int intValue = int.parse(String.fromCharCodes(
              //     value)); // Parse the character codes into a single integer
              // List<int> resultList = [intValue]; // Store the integer in a list
              // Store the integers in a list
              addDataToStream1(resultList);
              // Get current timestamp
              DateTime now = DateTime.now();
              String timestamp = now.toIso8601String();
              print('Received Data at $timestamp: $receivedData');
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

//10 at a time
// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         if (characteristic.uuid.toString() ==
//             "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
//           if (characteristic.properties.indicate) {
//             await characteristic.setNotifyValue(true);
//             characteristic.value.listen((value) {
//               List<int> receivedData = value;
//               List<int> resultList = [];
//               // Parse receivedData into individual integers
//               for (int i = 0; i < receivedData.length; i += 4) {
//                 int intValue = (receivedData[i] << 24) +
//                     (receivedData[i + 1] << 16) +
//                     (receivedData[i + 2] << 8) +
//                     receivedData[i + 3];
//                 resultList.add(intValue);
//               }
//               // Store the integers in a list
//               addDataToStream1(resultList);
//               // Get current timestamp
//               DateTime now = DateTime.now();
//               String timestamp = now.toIso8601String();
//               print('Received Data at $timestamp: $resultList');
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


// 1 at a time
// Future<String?> receiveData(BTDeviceStruct deviceInfo) async {
//   final device = BluetoothDevice.fromId(deviceInfo.id, name: deviceInfo.name);
//   final services = await device.discoverServices();
//   for (BluetoothService service in services) {
//     if (service.uuid.toString() == "6e400001-b5a3-f393-e0a9-e50e24dcca9e") {
//       for (BluetoothCharacteristic characteristic in service.characteristics) {
//         if (characteristic.uuid.toString() ==
//             "6e400002-b5a3-f393-e0a9-e50e24dcca9e") {
//           if (characteristic.properties.indicate) {
//             await characteristic.setNotifyValue(true);
//             characteristic.value.listen((value) {
//               // Convert received values to int (not ascii)
//               int intValue = int.parse(String.fromCharCodes(
//                   value)); // Parse the character codes into a single integer
//               List<int> resultList = [intValue]; // Store the integer in a list
//               addDataToStream1(resultList);
//                             // Get current timestamp
//               DateTime now = DateTime.now();
//               String timestamp = now.toIso8601String();
//              print('Received Data at $timestamp: $resultList');
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

