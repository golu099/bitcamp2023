import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PatientPortalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for postDetail widget.
  ScrollController? postDetail;
  // State field(s) for titleCalendar widget.
  ScrollController? titleCalendar;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    postDetail = ScrollController();
    titleCalendar = ScrollController();
    columnController1 = ScrollController();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    columnController2 = ScrollController();
    listViewController = ScrollController();
  }

  void dispose() {
    postDetail?.dispose();
    titleCalendar?.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    listViewController?.dispose();
  }

  /// Additional helper methods are added here.

}
