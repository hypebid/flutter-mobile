import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';

class SearchResultItemCard extends StatelessWidget {
  final String streamerName;
  final String streamerTag;
  final String percentage;
  final String value;
  final bool isUp;

  const SearchResultItemCard({
    super.key,
    required this.streamerName,
    required this.streamerTag,
    required this.percentage,
    required this.value,
    required this.isUp,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 100, // Define a fixed height for the card
        decoration: const BoxDecoration(
          color: CustomScheme.primaryBackground,
        ),
        alignment: const AlignmentDirectional(-1, 0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 50, // Define a fixed height for this container
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(-1, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: CustomScheme.primary,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  streamerTag,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    color: CustomScheme.primaryBackground,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                            child: Container(
                              height: 20, // Define a fixed height for this container
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(-1, -1),
                                child: Text(
                                  streamerName,
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    color: CustomScheme.secondaryText,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
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
              Expanded(
                flex: 1,
                child: Container(
                  height: 50, // Define a fixed height for this container
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isUp ? Icons.keyboard_double_arrow_up : Icons.keyboard_double_arrow_down,
                        color: isUp ? CustomScheme.accent4 : CustomScheme.accent3,
                        size: 32,
                      ),
                      Text(
                        '($percentage)',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: isUp ? CustomScheme.accent4 : CustomScheme.accent3,
                          fontSize: 16,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50, // Define a fixed height for this container
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$value ƕ',
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
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
    );
  }
}
