import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'documentation_model.dart';
export 'documentation_model.dart';

class DocumentationWidget extends StatefulWidget {
  const DocumentationWidget({super.key});

  @override
  State<DocumentationWidget> createState() => _DocumentationWidgetState();
}

class _DocumentationWidgetState extends State<DocumentationWidget>
    with TickerProviderStateMixin {
  late DocumentationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentationModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 50,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'User Manual',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              // Generated code for this TabBar Widget...
// Generated code for this TabBar Widget...
Expanded(
  child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
    child: Column(
      children: [
        Align(
          alignment: Alignment(0, 0),
          child: FlutterFlowButtonTabBar(
            useToggleButtonStyle: true,
            isScrollable: true,
            labelStyle: FlutterFlowTheme.of(context).titleMedium,
            unselectedLabelStyle: TextStyle(),
            labelColor: Color(0xFA4BB168),
            unselectedLabelColor: FlutterFlowTheme.of(context).secondaryText,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            unselectedBackgroundColor: Color(0xEFB5BABA),
            borderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 2,
            borderRadius: 12,
            elevation: 0,
            labelPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            tabs: [
              Tab(
                text: 'App Navigation',
              ),
              Tab(
                text: 'Module Setup',
              ),
            ],
            controller: _model.tabBarController,
            onTap: (i) async {
              [() async {}, () async {}][i]();
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _model.tabBarController,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '1',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Configure Bluetooth Connection',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Navigate to the bluetooth tab. Ensure bluetooth is enabled on the device, and within the app via the toggle button. Connect to the available BBC micro:bit.',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '2',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Specify Session Configuration',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Enable up to 3 channels that you would like to view simultaneously using the checkboxes. Channel 1 and 2 can be used for acquiring EMG or ECG signals, while Channel 3 is specific for EOG signals. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '3',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Configure Visualization Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Navigate to the data visualization tab. Check/uncheck the enabled channels that you would like view. Press \'Show Plot(s) to begin live data visualization. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '4',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 220,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Interact with Plots',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'You can freeze each plot at any time using the pause button. To zoom in or out on any plot, drag two fingers inwards/outwards. To view less or more plots simultaneously, press the plus button and adjust the visualization settings. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 470,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '1',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 450,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flash the micro:bit on the UNB Development Board',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Power the Dev Board using a 9V battery with the provided cable. Connect the Micro B port of the development board to the USB C port on a computer, using the appropriate cable. Download “BioAcquistion.hex”, which is available here: LINK INSERT. Drag the hex file to the microbit drive, which should appear on your computer after a successful connection. Wait for the download to complete and ensure no error codes are displayed on the LED screen. Remove the connection between the development board and the computer. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '2',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 360,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Attach Electrodes to the Device and User',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Ensure the device is fully electrically isolated, with the only connection to the module being that to the 9V battery. Plug in the surface electrode cables to each audio jack channel input on the module. Attach the surface electrodes to the user in the desired configuration based on the bio-signal(s) of interest. For more information on correct surface electrode replacement, refer here: LINK INSERT. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0xFFE0E3E7),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Text(
                                '3',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFA4BB168),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Launch the BioSync App',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF14181B),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 4, 0, 0),
                                        child: Text(
                                          'Utilise the BioSync app to configure a Bluetooth connection and visualize the bio-signals live. ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
)



              // Expanded(
              //   child: Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              //     child: Column(
              //       children: [
              //         Align(
              //           alignment: Alignment(0, 0),
              //           child: FlutterFlowButtonTabBar(
              //             useToggleButtonStyle: true,
              //             isScrollable: true,
              //             labelStyle: FlutterFlowTheme.of(context).titleMedium,
              //             unselectedLabelStyle: TextStyle(),
              //             labelColor: Color(0xFA4BB168),
              //             unselectedLabelColor:
              //                 FlutterFlowTheme.of(context).secondaryText,
              //             backgroundColor:
              //                 FlutterFlowTheme.of(context).secondaryBackground,
              //             unselectedBackgroundColor: Color(0xEFB5BABA),
              //             borderColor: FlutterFlowTheme.of(context).alternate,
              //             borderWidth: 2,
              //             borderRadius: 12,
              //             elevation: 0,
              //             labelPadding:
              //                 EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              //             tabs: [
              //               Tab(
              //                 text: 'App Navigation',
              //               ),
              //               Tab(
              //                 text: 'Module Setup',
              //               ),
              //             ],
              //             controller: _model.tabBarController,
              //             onTap: (i) async {
              //               [() async {}, () async {}][i]();
              //             },
              //           ),
              //         ),
              //         Expanded(
              //           child: TabBarView(
              //             controller: _model.tabBarController,
              //             children: [
              //               ListView(
              //                 padding: EdgeInsets.zero,
              //                 scrollDirection: Axis.vertical,
              //                 children: [
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 16, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '1',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'Configure Bluetooth Connection',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'Ensure bluetooth is enabled on the device, and within the app via the toggle button. Connect to the available MicroBit. ',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '2',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'Specify Session Configuration',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '3',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'Calibrate Module',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '4',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'Configure Visualization Settings',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '5',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'Interact with Plots',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               ListView(
              //                 padding: EdgeInsets.zero,
              //                 scrollDirection: Axis.vertical,
              //                 children: [
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 16, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '1',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'New Product View',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '2',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'New Product View',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '3',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'New Product View',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '4',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'New Product View',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         16, 0, 16, 16),
              //                     child: Container(
              //                       width: double.infinity,
              //                       height: 100,
              //                       decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         boxShadow: [
              //                           BoxShadow(
              //                             blurRadius: 0,
              //                             color: Color(0xFFE0E3E7),
              //                             offset: Offset(0, 1),
              //                           )
              //                         ],
              //                         borderRadius: BorderRadius.circular(10),
              //                       ),
              //                       child: Padding(
              //                         padding: EdgeInsetsDirectional.fromSTEB(
              //                             0, 8, 0, 8),
              //                         child: Row(
              //                           mainAxisSize: MainAxisSize.max,
              //                           children: [
              //                             Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       10, 0, 10, 0),
              //                               child: Text(
              //                                 '5',
              //                                 style:
              //                                     FlutterFlowTheme.of(context)
              //                                         .bodyMedium
              //                                         .override(
              //                                           fontFamily:
              //                                               'Readex Pro',
              //                                           fontSize: 20,
              //                                         ),
              //                               ),
              //                             ),
              //                             Container(
              //                               width: 4,
              //                               height: 90,
              //                               decoration: BoxDecoration(
              //                                 color: Color(0xFA4BB168),
              //                                 borderRadius:
              //                                     BorderRadius.circular(8),
              //                               ),
              //                             ),
              //                             Expanded(
              //                               child: Padding(
              //                                 padding: EdgeInsetsDirectional
              //                                     .fromSTEB(12, 0, 0, 0),
              //                                 child: Column(
              //                                   mainAxisSize: MainAxisSize.max,
              //                                   mainAxisAlignment:
              //                                       MainAxisAlignment.center,
              //                                   crossAxisAlignment:
              //                                       CrossAxisAlignment.start,
              //                                   children: [
              //                                     Text(
              //                                       'New Product View',
              //                                       style: FlutterFlowTheme.of(
              //                                               context)
              //                                           .bodyLarge
              //                                           .override(
              //                                             fontFamily:
              //                                                 'Plus Jakarta Sans',
              //                                             color:
              //                                                 Color(0xFF14181B),
              //                                             fontSize: 15,
              //                                             fontWeight:
              //                                                 FontWeight.w500,
              //                                           ),
              //                                     ),
              //                                     Expanded(
              //                                       child: Padding(
              //                                         padding:
              //                                             EdgeInsetsDirectional
              //                                                 .fromSTEB(
              //                                                     0, 4, 0, 0),
              //                                         child: Text(
              //                                           'details',
              //                                           style:
              //                                               FlutterFlowTheme.of(
              //                                                       context)
              //                                                   .labelMedium
              //                                                   .override(
              //                                                     fontFamily:
              //                                                         'Plus Jakarta Sans',
              //                                                     color: Color(
              //                                                         0xFF57636C),
              //                                                     fontSize: 14,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w500,
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}