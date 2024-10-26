import 'package:flutter/material.dart';
import 'package:hypebid/chart/line_chart.dart';
import 'package:hypebid/comp/line_chart_button.dart';
// import 'package:hypebid/comp/navigation_bar.dart';
import 'package:hypebid/comp/search_result_card.dart';
import 'package:hypebid/theme.dart';

class SearchDetails extends StatefulWidget {
  final String title;
  final SearchResultItemCard searchData;

  const SearchDetails({super.key, required this.title, required this.searchData});

  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {
  int selectedDataWindow = 2; // Initial selected time period (1 week)

  void handleDataWindowChange(int newWindow) {
    setState(() {
      selectedDataWindow = newWindow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: CustomScheme.primaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: CustomScheme.primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        constraints: BoxConstraints(
                          minHeight: 56,
                        ),
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(-1, 1),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Text(
                                  widget.searchData.streamerName,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 28,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      minWidth: 40,
                                      minHeight: 32,
                                    ),
                                    decoration: BoxDecoration(
                                      color: CustomScheme.primary,
                                      borderRadius: BorderRadius.circular(6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        widget.searchData.streamerTag,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          color: CustomScheme
                                              .primaryBackground,
                                          fontSize: 18,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        constraints: BoxConstraints(
                          minHeight: 32,
                        ),
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(-1, -1),
                          child: Text(
                            widget.searchData.value,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 28,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        constraints: BoxConstraints(
                          minHeight: 48,
                        ),
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(-1, -1),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Icon(
                                  widget.searchData.isUp
                                  ? Icons.keyboard_double_arrow_up
                                  : Icons.keyboard_double_arrow_down,
                                  color: widget.searchData.isUp
                                    ? CustomScheme.accent4
                                    : CustomScheme.accent3,
                                  size: 28,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    8, 0, 0, 0),
                                  child: Text(
                                    '${widget.searchData.diff} ƕ (${widget.searchData.percentage}%)',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: widget.searchData.isUp
                                        ? CustomScheme.accent4
                                        : CustomScheme.accent3,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.33,
                child: StreamerLineChart(dataWindow: selectedDataWindow),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: LineChartBtn(
                          btnText: '1H',
                          focused: selectedDataWindow == 0,
                          onPressed: () => handleDataWindowChange(0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 32,
                          ),
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: LineChartBtn(
                              btnText: '1D',
                              focused: selectedDataWindow == 1, 
                              onPressed: () => handleDataWindowChange(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 32,
                          ),
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: LineChartBtn(
                              btnText: '1W',
                              focused: selectedDataWindow == 2, 
                              onPressed: () => handleDataWindowChange(2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 32,
                          ),
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: LineChartBtn(
                              btnText: '1Q',
                              focused: selectedDataWindow == 3, 
                              onPressed: () => handleDataWindowChange(3),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 32,
                          ),
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: LineChartBtn(
                              btnText: '1Y',
                              focused: selectedDataWindow == 4, 
                              onPressed: () => handleDataWindowChange(4),
                            ),
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
    );
  }
}
