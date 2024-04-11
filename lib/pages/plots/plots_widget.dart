// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
// import 'plots_model.dart';
// export 'plots_model.dart';

// import '../hamburger/hamburger_widget.dart';
// import '../visualization_settings/visualization_settings_widget.dart';

// class PlotsWidget extends StatefulWidget {
//   const PlotsWidget({super.key});

//   @override
//   State<PlotsWidget> createState() => _PlotsWidgetState();
// }

// class _PlotsWidgetState extends State<PlotsWidget> {
//   late PlotsModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => PlotsModel());
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
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         appBar: AppBar(
//           backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//           automaticallyImplyLeading: false,
//           title: Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Text(
//                   'BioSync',
//                   style: FlutterFlowTheme.of(context).displaySmall,
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Align(
//                     alignment: AlignmentDirectional(1.0, 0.0),
//                     child: FlutterFlowIconButton(
//                       borderColor:
//                           FlutterFlowTheme.of(context).secondaryBackground,
//                       borderRadius: 20.0,
//                       borderWidth: 1.0,
//                       buttonSize: 48.0,
//                       fillColor:
//                           FlutterFlowTheme.of(context).secondaryBackground,
//                       icon: Icon(
//                         Icons.format_list_bulleted_add,
//                         color: FlutterFlowTheme.of(context).primaryText,
//                         size: 30.0,
//                       ),
//                       onPressed: () {
//                         print('IconButton pressed ...');
//                             Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => HamburgerWidget()));
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           actions: [],
//           centerTitle: false,
//           elevation: 2.0,
//         ),
//         body: SafeArea(
//           top: true,
//           child: Container(
//             decoration: BoxDecoration(),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding:
//                       EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             height: 40.0,
//                             decoration: BoxDecoration(
//                               color: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 4.0,
//                                   color: Color(0x33000000),
//                                   offset: Offset(0.0, 2.0),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Align(
//                                       alignment:
//                                           AlignmentDirectional(-1.0, 0.0),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10.0, 0.0, 0.0, 0.0),
//                                         child: Text(
//                                           'Visualization Settings',
//                                           style: FlutterFlowTheme.of(context)
//                                               .headlineMedium
//                                               .override(
//                                                 fontFamily: 'Outfit',
//                                                 fontSize: 22.0,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                         ),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0.0, 0.0, 10.0, 0.0),
//                                       child: FlutterFlowIconButton(
//                                         borderColor:
//                                             FlutterFlowTheme.of(context)
//                                                 .secondaryBackground,
//                                         borderRadius: 20.0,
//                                         borderWidth: 1.0,
//                                         buttonSize: 40.0,
//                                         fillColor: FlutterFlowTheme.of(context)
//                                             .secondaryBackground,
//                                         icon: Icon(
//                                           Icons.add,
//                                           color: FlutterFlowTheme.of(context)
//                                               .primaryText,
//                                           size: 24.0,
//                                         ),
//                                         onPressed: () {
//                                           //needs edited, switch out container
//                                           print('IconButton pressed ...');
//                                          Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => VisualizationSettingsWidget()));
//                                         },
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Container(
//                                   width: double.infinity,
//                                   height: 38.0,
//                                   decoration: BoxDecoration(
//                                     color: FlutterFlowTheme.of(context)
//                                         .secondaryBackground,
//                                   ),
//                                   alignment: AlignmentDirectional(0.0, 0.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding:
//                             EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
//                         child: Container(
//                           width: double.infinity,
//                           height: 569.0,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 4.0,
//                                 color: Color(0x33000000),
//                                 offset: Offset(0.0, 2.0),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Align(
//                                 alignment: AlignmentDirectional(-1.0, -1.0),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       10.0, 8.0, 0.0, 8.0),
//                                   child: Text(
//                                     'Live Visualization',
//                                     style: FlutterFlowTheme.of(context)
//                                         .headlineMedium
//                                         .override(
//                                           fontFamily: 'Outfit',
//                                           fontSize: 22.0,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   width: double.infinity,
//                                   height: 100.0,
//                                   decoration: BoxDecoration(
//                                     color: FlutterFlowTheme.of(context)
//                                         .secondaryBackground,
//                                   ),
//                                   alignment: AlignmentDirectional(0.0, 0.0),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
