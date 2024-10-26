import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';

class LineChartBtn extends StatelessWidget {
  final String btnText;
  final bool focused;
  final VoidCallback onPressed;

  const LineChartBtn({
    super.key,
    required this.btnText,
    required this.focused,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(
          minHeight: 32,
        ),
        decoration: BoxDecoration(),
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: focused ? CustomScheme.primary : CustomScheme.primaryBackground,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                btnText,
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: focused ? CustomScheme.primaryBackground : CustomScheme.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
