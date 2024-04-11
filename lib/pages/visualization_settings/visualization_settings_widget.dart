import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'visualization_settings_model.dart';
export 'visualization_settings_model.dart';
import '../../widgets/visualization_settings.dart';
import '../../widgets/configuring_session.dart';
import '../../widgets/plot_widget.dart';
import '../../widgets/plots_widget2.dart';
import '../../widgets/plots_widget3.dart';
import '../hamburger/hamburger_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../actions/receive_data.dart'; // Import your BluetoothDataReceiver class
//import 'plot_widget.dart'; // Import your PlotWidget

class VisualizationSettingsWidget extends StatefulWidget {
  const VisualizationSettingsWidget({Key? key}) : super(key: key);

  @override
  State<VisualizationSettingsWidget> createState() =>
      _VisualizationSettingsWidgetState();
}

class _VisualizationSettingsWidgetState
    extends State<VisualizationSettingsWidget> {
  late VisualizationSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualizationSettingsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  bool _isEmptyContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    final UpdateConfiguringSession session = Provider.of<UpdateConfiguringSession>(context);
    return ChangeNotifierProvider(
      create: (_) => CheckboxState(),
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'BioSync',
                    style: FlutterFlowTheme.of(context).displaySmall,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 48.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.format_list_bulleted_add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HamburgerWidget(),
                          ));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!_isEmptyContainerVisible)
                          Container(
                            width: double.infinity,
                            height: 280.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Visualization Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 188.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: SignalAcquisitionWidget(),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          setState(() {
                                            _isEmptyContainerVisible = true;
                                          });
                                        },
                                        text: 'Show Plot(s)',
                                        options: FFButtonOptions(
                                          height: 30.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFA4BB169),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_isEmptyContainerVisible)
                          Container(
                            decoration: BoxDecoration(),
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height -190,
                          //  height: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: (MediaQuery.of(context).size.height -190) * 0.1,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Text(
                                            'Visualization Settings',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: 20,
                                          borderWidth: 1,
                                          buttonSize: 40,
                                          fillColor: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          icon: Icon(
                                            Icons.add,
                                            color:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            size: 24,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isEmptyContainerVisible = false;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 16),
                                  child: Container(
                                    width: double.infinity,
                                    // height: (MediaQuery.of(context)
                                    //         .size
                                    //         .height -
                                    //     300) *
                                    //     0.9, // 500-295
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 10, 0, 0),
                                          child: Text(
                                            'Live Visualization',
                                            style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Consumer<CheckboxState>(
    builder: (context, checkboxState, _) {
      // Store the number of enabled channels in a variable
      final int numEnabledChannels = checkboxState.numEnabledChannels <= session.selectedChannels.length ? checkboxState.numEnabledChannels : session.selectedChannels.length;

      // Define variables to store the proportions of space for the plots
      double plot1Flex = 1.0;
      double plot2Flex = 1.0;
      double plot3Flex = 1.0;

      // Update the flex proportions based on the number of enabled channels
      if (numEnabledChannels == 1) {
        plot1Flex = 3.0;
        plot2Flex = 0.0;
        plot3Flex = 0.0;
      } else if (numEnabledChannels == 2) {
        plot1Flex = 1.0;
        plot2Flex = 1.0;
        plot3Flex = 0.0;
      } else if (numEnabledChannels == 3) {
        plot1Flex = 1.0;
        plot2Flex = 1.0;
        plot3Flex = 1.0;
      }

return Expanded(
  child: Container(
    width: double.infinity,
    height: (MediaQuery.of(context).size.height - 295) * 0.9,
    decoration: BoxDecoration(
      color: FlutterFlowTheme.of(context).secondaryBackground,
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          color: Color(0x33000000),
          offset: Offset(0, 2),
        )
      ],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        // Padding(
        //   padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
        //   child: Text(
        //     'Live Visualization',
        //     style: FlutterFlowTheme.of(context).bodyMedium.override(
        //       fontFamily: 'Readex Pro',
        //       fontSize: 22,
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // ),
        Expanded(
          child: Column(
            children: [
              // Text(
              //   'Number of enabled channels: $numEnabledChannels',
              // ),
              if (numEnabledChannels >= 1)
                Expanded(
                  flex: plot1Flex.toInt(),
                  child: Container(
                    // Replace with your first container widget
                    // height:20,
                    color: Colors.red, // Example color
                    child: PlotWidget(),
                  ),
                ),
              if (numEnabledChannels >= 2)
                Expanded(
                  flex: plot2Flex.toInt(),
                  child: Container(
                    // Replace with your second container widget
                    color: Colors.blue, // Example color
                    child: PlotWidget2(),
                  ),
                ),
              if (numEnabledChannels >= 3)
                Expanded(
                  flex: plot3Flex.toInt(),
                  child: Container(
                    // Replace with your third container widget
                    color: Colors.green, // Example color
                    child: PlotWidget3(),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  ),
);
    },
  ),
),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}