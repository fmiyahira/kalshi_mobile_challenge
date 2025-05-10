import 'package:flutter/material.dart';

extension StringExtension on String {
  List<TextSpan> formatBoldText() {
    final List<TextSpan> textSpans = [];
    final RegExp exp = RegExp(r'(\*[^*]+\*)|([^*]+)');
    final matches = exp.allMatches(this);

    for (final match in matches) {
      final String? boldText = match.group(1);
      final String? normalText = match.group(2);
      if (boldText != null) {
        textSpans.add(
          TextSpan(
            text: boldText.replaceAll('*', ''),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        );
      } else if (normalText != null) {
        textSpans.add(TextSpan(text: normalText));
      }
    }
    return textSpans;
  }
}
