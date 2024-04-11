// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
// import 'hanburger_visual_model.dart';
// export 'hanburger_visual_model.dart';

// import '../hamburger/hamburger_widget.dart';
// import '../documentation/documentation_widget.dart';

// class HanburgerVisualWidget extends StatefulWidget {
//   const HanburgerVisualWidget({super.key});

//   @override
//   State<HanburgerVisualWidget> createState() => _HanburgerVisualWidgetState();
// }

// class _HanburgerVisualWidgetState extends State<HanburgerVisualWidget>
//     with TickerProviderStateMixin {
//   late HanburgerVisualModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   final animationsMap = {
//     'containerOnActionTriggerAnimation': AnimationInfo(
//       trigger: AnimationTrigger.onActionTrigger,
//       applyInitialState: true,
//       effects: [
//         MoveEffect(
//           curve: Curves.easeInOut,
//           delay: 0.ms,
//           duration: 600.ms,
//           begin: Offset(0.0, 0.0),
//           end: Offset(115.0, 0.0),
//         ),
//       ],
//     ),
//   };

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => HanburgerVisualModel());

//     setupAnimations(
//       animationsMap.values.where((anim) =>
//           anim.trigger == AnimationTrigger.onActionTrigger ||
//           !anim.applyInitialState),
//       this,
//     );
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
//                 child: Container( //start
//                   width: double.infinity,
//                   height: 144.0,
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
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           flex: 10,
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.settings_suggest,
//                                     color: FlutterFlowTheme.of(context)
//                                         .secondaryText,
//                                     size: 24.0,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         12.0, 0.0, 0.0, 0.0),
//                                     child: Text(
//                                       'Visual Settings',
//                                       style: FlutterFlowTheme.of(context)
//                                           .labelLarge,
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Align(
//                                       alignment:
//                                           AlignmentDirectional(1.0, -1.0),
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
//                                           Icons.maximize,
//                                           color: FlutterFlowTheme.of(context)
//                                               .secondaryText,
//                                           size: 24.0,
//                                         ),
//                                         onPressed: () {
//                                           print('IconButton pressed ...');
//                                           Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => HamburgerWidget()));
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0.0, 10.0, 0.0, 16.0),
//                                 child: Container(
//                                   width: 250.0,
//                                   height: 50.0,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFFF1F4F8),
//                                     borderRadius: BorderRadius.circular(12.0),
//                                     border: Border.all(
//                                       color: Color(0xFFE0E3E7),
//                                       width: 1.0,
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Expanded(
//                                           child: InkWell(
//                                             splashColor: Colors.transparent,
//                                             focusColor: Colors.transparent,
//                                             hoverColor: Colors.transparent,
//                                             highlightColor: Colors.transparent,
//                                             onTap: () async {
//                                               setDarkModeSetting(
//                                                   context, ThemeMode.light);
//                                             },
//                                             child: Container(
//                                               width: 115.0,
//                                               height: 100.0,
//                                               decoration: BoxDecoration(
//                                                 color: Theme.of(context)
//                                                             .brightness ==
//                                                         Brightness.light
//                                                     ? Colors.white
//                                                     : Color(0xFFF1F4F8),
//                                                 borderRadius:
//                                                     BorderRadius.circular(10.0),
//                                                 border: Border.all(
//                                                   color: valueOrDefault<Color>(
//                                                     Theme.of(context)
//                                                                 .brightness ==
//                                                             Brightness.light
//                                                         ? Color(0xFFE0E3E7)
//                                                         : Color(0xFFF1F4F8),
//                                                     Color(0xFFE0E3E7),
//                                                   ),
//                                                   width: 1.0,
//                                                 ),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Icon(
//                                                     Icons.wb_sunny_rounded,
//                                                     color: Theme.of(context)
//                                                                 .brightness ==
//                                                             Brightness.light
//                                                         ? Color(0xFF14181B)
//                                                         : Color(0xFF57636C),
//                                                     size: 16.0,
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(4.0, 0.0,
//                                                                 0.0, 0.0),
//                                                     child: Text(
//                                                       'Light Mode',
//                                                       style: FlutterFlowTheme
//                                                               .of(context)
//                                                           .bodyMedium
//                                                           .override(
//                                                             fontFamily:
//                                                                 'Outfit',
//                                                             color: Theme.of(context)
//                                                                         .brightness ==
//                                                                     Brightness
//                                                                         .light
//                                                                 ? Color(
//                                                                     0xFF14181B)
//                                                                 : Color(
//                                                                     0xFF57636C),
//                                                             fontSize: 14.0,
//                                                             fontWeight:
//                                                                 FontWeight.w500,
//                                                           ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Expanded(
//                                           child: InkWell(
//                                             splashColor: Colors.transparent,
//                                             focusColor: Colors.transparent,
//                                             hoverColor: Colors.transparent,
//                                             highlightColor: Colors.transparent,
//                                             onTap: () async {
//                                               setDarkModeSetting(
//                                                   context, ThemeMode.dark);
//                                             },
//                                             child: Container(
//                                               width: 115.0,
//                                               height: 100.0,
//                                               decoration: BoxDecoration(
//                                                 color: Theme.of(context)
//                                                             .brightness ==
//                                                         Brightness.dark
//                                                     ? Colors.white
//                                                     : Color(0xFFF1F4F8),
//                                                 borderRadius:
//                                                     BorderRadius.circular(10.0),
//                                                 border: Border.all(
//                                                   color: valueOrDefault<Color>(
//                                                     Theme.of(context)
//                                                                 .brightness ==
//                                                             Brightness.dark
//                                                         ? Color(0xFFE0E3E7)
//                                                         : Color(0xFFF1F4F8),
//                                                     Color(0xFFF1F4F8),
//                                                   ),
//                                                   width: 1.0,
//                                                 ),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Icon(
//                                                     Icons.nightlight_round,
//                                                     color: Theme.of(context)
//                                                                 .brightness ==
//                                                             Brightness.dark
//                                                         ? Color(0xFF14181B)
//                                                         : Color(0xFF57636C),
//                                                     size: 16.0,
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(4.0, 0.0,
//                                                                 0.0, 0.0),
//                                                     child: Text(
//                                                       'Dark Mode',
//                                                       style: FlutterFlowTheme
//                                                               .of(context)
//                                                           .bodyMedium
//                                                           .override(
//                                                             fontFamily:
//                                                                 'Outfit',
//                                                             color: Theme.of(context)
//                                                                         .brightness ==
//                                                                     Brightness
//                                                                         .dark
//                                                                 ? Color(
//                                                                     0xFF14181B)
//                                                                 : Color(
//                                                                     0xFF57636C),
//                                                             fontSize: 14.0,
//                                                             fontWeight:
//                                                                 FontWeight.w500,
//                                                           ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ).animateOnActionTrigger(
//                                             animationsMap[
//                                                 'containerOnActionTriggerAnimation']!,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ), //end
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
//                             alignment: AlignmentDirectional(1.0, -1.0),
//                             child: FlutterFlowIconButton(
//                               borderColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                               borderRadius: 20.0,
//                               borderWidth: 1.0,
//                               buttonSize: 40.0,
//                               fillColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                               icon: Icon(
//                                 Icons.navigate_next,
//                                 color:
//                                     FlutterFlowTheme.of(context).secondaryText,
//                                 size: 24.0,
//                               ),
//                               onPressed: () {
//                                 print('IconButton pressed ...');
//                                 Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => DocumentationWidget()));
//                               },
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
