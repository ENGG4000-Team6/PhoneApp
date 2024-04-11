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
              activeColor: Color(0xFA4BB168),
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
              activeColor: Color(0xFA4BB168),
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
              activeColor: Color(0xFA4BB168),              
              value: updateConfiguringSession
                  .selectedChannels.containsKey('Channel 3'),
              onChanged: (newValue) {
                updateConfiguringSession
                    .updateSelectedChannels('Channel 3', 'EOG');
              },
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     print(updateConfiguringSession.selectedChannels);
            //   },
            //   child: Text('Start Session'),
            // ),
          ],
        ),
      ),
    );
  }
}