// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// // import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:provider/provider.dart';
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
//                           Icons.settings_suggest,
//                           color: FlutterFlowTheme.of(context).secondaryText,
//                           size: 24.0,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(
//                               12.0, 0.0, 0.0, 0.0),
//                           child: Text(
//                             'Visual Settings',
//                             style: FlutterFlowTheme.of(context).labelLarge,
//                           ),
//                         ),
//                         Expanded(
//                           child: Align(
//                             alignment: AlignmentDirectional(0.9, 0.0),
//                             child: Icon(
//                               Icons.add,
//                               color: FlutterFlowTheme.of(context).secondaryText,
//                               size: 21.0,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
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
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import 'hamburger_model.dart';
export 'hamburger_model.dart';

import '../hanburger_visual/hanburger_visual_widget.dart';
import '../documentation/documentation_widget.dart';

class HamburgerWidget extends StatefulWidget {
  const HamburgerWidget({super.key});

  @override
  State<HamburgerWidget> createState() => _HamburgerWidgetState();
}

class _HamburgerWidgetState extends State<HamburgerWidget> {
  late HamburgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                  'Settings',
                  style: FlutterFlowTheme.of(context).headlineLarge,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_suggest,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Visual Settings',
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(1, -1),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 40,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                                //add
                                Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HanburgerVisualWidget()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.help_outline,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'User Manual',
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(1, -1),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 40,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                                Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DocumentationWidget()));
                                
                              },
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
        ),
      ),
    );
  }
}
