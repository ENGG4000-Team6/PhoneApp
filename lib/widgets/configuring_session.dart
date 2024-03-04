// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// // Create a class to hold your data
// class UpdateConfiguringSession extends ChangeNotifier {
//   Map<String, String> selectedChannels = {};

//   void updateSelectedChannels(String channel, String option) {
//     if (selectedChannels.containsKey(channel) &&
//         selectedChannels[channel] == option) {
//       selectedChannels.remove(channel);
//     } else {
//       selectedChannels[channel] = option;
//     }
//     notifyListeners(); // Notify listeners when data changes
//   }
// }

// class ConfiguringSession extends StatefulWidget {
//   const ConfiguringSession({Key? key}) : super(key: key);

//   @override
//   _ConfiguringSessionState createState() => _ConfiguringSessionState();
// }


// class _ConfiguringSessionState extends State<ConfiguringSession>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   bool get wantKeepAlive => true;

//   bool isChannel1EMGSelected = false;
//   bool isChannel1ECGSelected = false;
//   bool isChannel2EMGSelected = false;
//   bool isChannel2ECGSelected = false;
//   bool isChannel3EOGSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     final updateConfiguringSession = Provider.of<UpdateConfiguringSession>(context);
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Flexible(
//               child: buildChannelSelection('Channel 1', 'EMG', 'ECG'),
//             ),
//             Flexible(
//               child: buildChannelSelection('Channel 2', 'EMG', 'ECG'),
//             ),
//             Flexible(
//               child: buildChannelSelection('Channel 3', 'EOG', null),
//             ),
//            // const SizedBox(height: 0),
//             ElevatedButton(
//               onPressed: () {
//                // updateConfiguringSession.updateSelectedChannels(channel, option);
//                 print(
//                     'Channel 1: EMG - $isChannel1EMGSelected, ECG - $isChannel1ECGSelected');
//                 print(
//                     'Channel 2: EMG - $isChannel2EMGSelected, ECG - $isChannel2ECGSelected');
//                 print('Channel 3: EOG - $isChannel3EOGSelected');
//               },
//               style: ButtonStyle(
//                minimumSize: MaterialStateProperty.all(const Size(5, 4)), // Adjust size as needed
//               ),
//               child: const Text('Start Session', style: TextStyle(fontSize: 10)), // Adjust text size if needed
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//  Widget buildChannelSelection(
//   String channel, String option1, String? option2) {
//   return Column(
//     mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         '$channel Signal Type:',
//         style: TextStyle(fontSize: 10), // Adjust the text size here
//       ),
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           buildRadioButton(channel, option1),
//           if (option2 != null) ...[
//            // const SizedBox(width: 0),
//             buildRadioButton(channel, option2),
//           ],
//         ],
//       ),
//     ],
//   );
// }

// Widget buildRadioButton(String channel, String option) {
//   bool isSelected = getSelectionState(channel, option);
//   final updateConfiguringSession = Provider.of<UpdateConfiguringSession>(context);
//   print("in buildRadio");
//   return Row(
//     children: [
//       Transform.scale(
//         scale: 0.8, // Adjust the scale factor as needed
//         child: Checkbox(
//           value: isSelected,
//           onChanged: (value) {
//             print("inon changed");
//             setState(() {
//               if (value != null) {
//                 print("in if");
//                 updateSelectionState(channel, option, value);
//                 //widget.updateSelectedChannels(channel, option);
//                 updateConfiguringSession.updateSelectedChannels(channel, option);
//               }
//             });
//           },
//         ),
//       ),
//       Text(
//         option,
//         style: TextStyle(fontSize: 10), // Adjust the text size here
//       ),
//     ],
//   );
// }
//   bool getSelectionState(String channel, String option) {
//     switch ('$channel-$option') {
//       case 'Channel 1-EMG':
//         return isChannel1EMGSelected;
//       case 'Channel 1-ECG':
//         return isChannel1ECGSelected;
//       case 'Channel 2-EMG':
//         return isChannel2EMGSelected;
//       case 'Channel 2-ECG':
//         return isChannel2ECGSelected;
//       case 'Channel 3-EOG':
//         return isChannel3EOGSelected;
//       default:
//         return false;
//     }
//   }

//   void updateSelectionState(String channel, String option, bool value) {
//     switch ('$channel-$option') {
//       case 'Channel 1-EMG':
//         if (value) {
//           isChannel1EMGSelected = value;
//           isChannel1ECGSelected = !value;
//         } else {
//           isChannel1EMGSelected = false;
//         }
//         break;
//       case 'Channel 1-ECG':
//         if (value) {
//           isChannel1ECGSelected = value;
//           isChannel1EMGSelected = !value;
//         } else {
//           isChannel1ECGSelected = false;
//         }
//         break;
//       case 'Channel 2-EMG':
//         if (value) {
//           isChannel2EMGSelected = value;
//           isChannel2ECGSelected = !value;
//         } else {
//           isChannel2EMGSelected = false;
//         }
//         break;
//       case 'Channel 2-ECG':
//         if (value) {
//           isChannel2ECGSelected = value;
//           isChannel2EMGSelected = !value;
//         } else {
//           isChannel2ECGSelected = false;
//         }
//         break;
//       case 'Channel 3-EOG':
//         if (value) {
//           isChannel3EOGSelected = value;
//         } else {
//           isChannel3EOGSelected = false;
//         }
//         break;
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Create a class to hold your data
class UpdateConfiguringSession extends ChangeNotifier {
  Map<String, String> selectedChannels = {};

  void updateSelectedChannels(String channel, String option) {
    if (selectedChannels.containsKey(channel) &&
        selectedChannels[channel] == option) {
      selectedChannels.remove(channel);
    } else {
      selectedChannels[channel] = option;
    }
    notifyListeners(); // Notify listeners when data changes
  }
}

class ConfiguringSession extends StatefulWidget {
  const ConfiguringSession({Key? key}) : super(key: key);

  @override
  _ConfiguringSessionState createState() => _ConfiguringSessionState();
}

class _ConfiguringSessionState extends State<ConfiguringSession>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final updateConfiguringSession =
        Provider.of<UpdateConfiguringSession>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CheckboxListTile(
              title: Text(
                'Channel 1',
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text('Enable EMG/ECG'),
              value: updateConfiguringSession
                  .selectedChannels.containsKey('Channel 1'),
              onChanged: (newValue) {
                updateConfiguringSession.updateSelectedChannels(
                    'Channel 1', 'EMG/ECG');
              },
            ),
            CheckboxListTile(
              title: Text(
                'Channel 2',
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text('Enable EMG/ECG'),
              value: updateConfiguringSession
                  .selectedChannels.containsKey('Channel 2'),
              onChanged: (newValue) {
                updateConfiguringSession.updateSelectedChannels(
                    'Channel 2', 'EMG/ECG');
              },
            ),
            CheckboxListTile(
              title: Text(
                'Channel 3',
                style: TextStyle(fontSize: 17),
              ),
              subtitle: Text('Enable EOG'),
              value: updateConfiguringSession
                  .selectedChannels.containsKey('Channel 3'),
              onChanged: (newValue) {
                updateConfiguringSession
                    .updateSelectedChannels('Channel 3', 'EOG');
              },
            ),
            ElevatedButton(
              onPressed: () {
                print(updateConfiguringSession.selectedChannels);
              },
              child: Text('Start Session'),
            ),
          ],
        ),
      ),
    );
  }
}