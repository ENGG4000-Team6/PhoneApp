import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'configuring_session.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckboxState extends ChangeNotifier {
  bool _channel1Checked = true;
  bool _channel2Checked = true;
  bool _channel3Checked = true;

  bool get channel1Checked => _channel1Checked;
  bool get channel2Checked => _channel2Checked;
  bool get channel3Checked => _channel3Checked;

  late SharedPreferences _prefs;

    CheckboxState() {
    _initPrefs();
  }

    Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _channel1Checked = _prefs.getBool('channel1Checked') ?? true;
    _channel2Checked = _prefs.getBool('channel2Checked') ?? true;
    _channel3Checked = _prefs.getBool('channel3Checked') ?? true;
    notifyListeners();
  }

  Future<void> _saveToPrefs() async {
    await _prefs.setBool('channel1Checked', _channel1Checked);
    await _prefs.setBool('channel2Checked', _channel2Checked);
    await _prefs.setBool('channel3Checked', _channel3Checked);
  }

  void setChannel1Checked(bool value) {
    _channel1Checked = value;
    _saveToPrefs();
    notifyListeners();
  }

  void setChannel2Checked(bool value) {
    _channel2Checked = value;
    _saveToPrefs();
    notifyListeners();
  }

  void setChannel3Checked(bool value) {
    _channel3Checked = value;
    _saveToPrefs();
    notifyListeners();
  }
}

class SignalAcquisitionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UpdateConfiguringSession>(
      builder: (context, updateConfiguringSession, _) {
        // Access selectedChannels from the provider
        Map<String, String> selectedChannels =
            updateConfiguringSession.selectedChannels;

        // Determine showChannel1, showChannel2, showChannel3 based on selectedChannels
        bool showChannel1 = selectedChannels.containsKey('Channel 1');
        bool showChannel2 = selectedChannels.containsKey('Channel 2');
        bool showChannel3 = selectedChannels.containsKey('Channel 3');

        return ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showChannel1) ...[
                  Row(
                    children: [
                      Checkbox(
                        value: Provider.of<CheckboxState>(context)
                            .channel1Checked,
                        onChanged: (newValue) {
                          Provider.of<CheckboxState>(context, listen: false)
                              .setChannel1Checked(newValue ?? false);
                        },
                      ),
                      const SizedBox(width: 8),
                      Text('Channel 1:'),
                      const SizedBox(width: 8),
                      // Add your other UI components here
                    ],
                  ),
                ],
                if (showChannel2) ...[
                  Row(
                    children: [
                      Checkbox(
                        value: Provider.of<CheckboxState>(context)
                            .channel2Checked,
                        onChanged: (newValue) {
                          Provider.of<CheckboxState>(context, listen: false)
                              .setChannel2Checked(newValue ?? false);
                        },
                      ),
                      const SizedBox(width: 8),
                      Text('Channel 2:'),
                      const SizedBox(width: 8),
                      // Add your other UI components here
                    ],
                  ),
                ],
                if (showChannel3) ...[
                  Row(
                    children: [
                      Checkbox(
                        value: Provider.of<CheckboxState>(context)
                            .channel3Checked,
                        onChanged: (newValue) {
                          Provider.of<CheckboxState>(context, listen: false)
                              .setChannel3Checked(newValue ?? false);
                        },
                      ),
                      const SizedBox(width: 8),
                      Text('Channel 3:'),
                      const SizedBox(width: 8),
                      // Add your other UI components here
                    ],
                  ),
                ],
              ],
            ),
          ],
        );
      },
    );
  }
}

// class SignalAcquisitionWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<CheckboxState>(
//       builder: (context, checkboxState, _) {
//         return Container(
//           width: double.infinity,
//           child: ListView(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Checkbox(
//                         value: checkboxState.channel1Checked,
//                         onChanged: (value) {
//                           checkboxState.setChannel1Checked(value ?? false);
//                         },
//                       ),
//                       const SizedBox(width: 8),
//                       Text('Channel 1:'),
//                       const SizedBox(width: 8),
//                       // Add your other UI components here
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Checkbox(
//                         value: checkboxState.channel2Checked,
//                         onChanged: (value) {
//                           checkboxState.setChannel2Checked(value ?? false);
//                         },
//                       ),
//                       const SizedBox(width: 8),
//                       Text('Channel 2:'),
//                       const SizedBox(width: 8),
//                       // Add your other UI components here
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Checkbox(
//                         value: checkboxState.channel3Checked,
//                         onChanged: (value) {
//                           checkboxState.setChannel3Checked(value ?? false);
//                         },
//                       ),
//                       const SizedBox(width: 8),
//                       Text('Channel 3:'),
//                       const SizedBox(width: 8),
//                       // Add your other UI components here
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }