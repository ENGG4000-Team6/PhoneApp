import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hamburger_model.dart';
export 'hamburger_model.dart';
import '../documentation/documentation_widget.dart';

class HamburgerWidget extends StatefulWidget {
  const HamburgerWidget({super.key});

  @override
  State<HamburgerWidget> createState() => _HamburgerWidgetState();
}

class _HamburgerWidgetState extends State<HamburgerWidget> {
  late HamburgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showVisualSettings = true;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HamburgerModel());
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
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Settings',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: _showVisualSettings
                    ? Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.settings_suggest,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Visual Settings',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 21.0,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _showVisualSettings = false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : 
                  Container( //start
                  width: double.infinity,
                  height: 144.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.settings_suggest,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Visual Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 16.0),
                                child: Container(
                                  width: 250.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Color(0xFFE0E3E7),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.light);
                                            },
                                            child: Container(
                                              width: 115.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.light
                                                    ? Colors.white
                                                    : Color(0xFFF1F4F8),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: valueOrDefault<Color>(
                                                    Theme.of(context)
                                                                .brightness ==
                                                            Brightness.light
                                                        ? Color(0xFFE0E3E7)
                                                        : Color(0xFFF1F4F8),
                                                    Color(0xFFE0E3E7),
                                                  ),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.wb_sunny_rounded,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.light
                                                        ? Color(0xFF14181B)
                                                        : Color(0xFF57636C),
                                                    size: 16.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Light Mode',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .light
                                                                ? Color(
                                                                    0xFF14181B)
                                                                : Color(
                                                                    0xFF57636C),
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.dark);
                                            },
                                            child: Container(
                                              width: 115.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : Color(0xFFF1F4F8),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: valueOrDefault<Color>(
                                                    Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Color(0xFFE0E3E7)
                                                        : Color(0xFFF1F4F8),
                                                    Color(0xFFF1F4F8),
                                                  ),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.nightlight_round,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? Color(0xFF14181B)
                                                        : Color(0xFF57636C),
                                                    size: 16.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Dark Mode',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Color(
                                                                    0xFF14181B)
                                                                : Color(
                                                                    0xFF57636C),
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //end
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.help_outline,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'User Manual',
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(1, -1),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 40,
                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                              icon: Icon(
                                Icons.navigate_next,
                                color: FlutterFlowTheme.of(context).secondaryText,
                                size: 24,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DocumentationWidget()));
                              },
                          ),
                        ),
                        )
                      ]
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'hamburger_model.dart';
// export 'hamburger_model.dart';

// class HamburgerWidget extends StatefulWidget {
//   const HamburgerWidget({super.key});

//   @override
//   State<HamburgerWidget> createState() => _HamburgerWidgetState();
// }

// class _HamburgerWidgetState extends State<HamburgerWidget> {
//   late HamburgerModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   bool _showVisualSettings = true;

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HamburgerModel());
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).alternate,
//         body: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
//                 child: FlutterFlowIconButton(
//                   borderColor: Colors.transparent,
//                   borderRadius: 30.0,
//                   borderWidth: 1.0,
//                   buttonSize: 50.0,
//                   icon: Icon(
//                     Icons.arrow_back_rounded,
//                     color: FlutterFlowTheme.of(context).primaryText,
//                     size: 30.0,
//                   ),
//                   onPressed: () async {
//                     context.safePop();
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
//                 child: Text(
//                   'Settings',
//                   style: FlutterFlowTheme.of(context).headlineLarge,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
//                 child: _showVisualSettings
//                     ? Container(
//                         width: double.infinity,
//                         height: 60.0,
//                         decoration: BoxDecoration(
//                           color:
//                               FlutterFlowTheme.of(context).secondaryBackground,
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 3.0,
//                               color: Color(0x33000000),
//                               offset: Offset(0.0, 1.0),
//                             )
//                           ],
//                           borderRadius: BorderRadius.circular(8.0),
//                           shape: BoxShape.rectangle,
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Icon(
//                                 Icons.settings_suggest,
//                                 color:
//                                     FlutterFlowTheme.of(context).secondaryText,
//                                 size: 24.0,
//                               ),
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     12.0, 0.0, 0.0, 0.0),
//                                 child: Text(
//                                   'Visual Settings',
//                                   style: FlutterFlowTheme.of(context)
//                                       .labelLarge,
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Align(
//                                   alignment: AlignmentDirectional(0.9, 0.0),
//                                   child: IconButton(
//                                     icon: Icon(
//                                       Icons.add,
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryText,
//                                       size: 21.0,
//                                     ),
//                                     onPressed: () {
//                                       setState(() {
//                                         _showVisualSettings = false;
//                                       });
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     : Container(
//                         width: double.infinity,
//                         height: 110.0, // Change the height as needed
//                         decoration: BoxDecoration(
//                           color:
//                               FlutterFlowTheme.of(context).secondaryBackground,
//                           boxShadow: [
//                             BoxShadow(
//                               blurRadius: 3.0,
//                               color: Color(0x33000000),
//                               offset: Offset(0.0, 1.0),
//                             )
//                           ],
//                           borderRadius: BorderRadius.circular(8.0),
//                           shape: BoxShape.rectangle,
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               // Your content for the replacement container
//                               StatusWidget(
//                                 onPressed: () {
//                                   // Add your logic here
//                                   print("Status icon pressed");
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 60.0,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 3.0,
//                         color: Color(0x33000000),
//                         offset: Offset(0.0, 1.0),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(8.0),
//                     shape: BoxShape.rectangle,
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Icon(
//                           Icons.help_outline,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24.0,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               12.0, 0.0, 0.0, 0.0),
//                           child: Text(
//                             'User Manual',
//                             style: FlutterFlowTheme.of(context).labelLarge,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0.0),
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 18.0,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StatusWidget extends StatelessWidget {
//   final VoidCallback onPressed;

//   const StatusWidget({Key? key, required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(
//           Icons.info_outline,
//           color: FlutterFlowTheme.of(context).secondaryText,
//           size: 24.0,
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.arrow_forward_ios,
//             color: FlutterFlowTheme.of(context).secondaryText,
//             size: 18.0,
//           ),
//           onPressed: onPressed,
//         ),
//       ],
//     );
//   }
// }