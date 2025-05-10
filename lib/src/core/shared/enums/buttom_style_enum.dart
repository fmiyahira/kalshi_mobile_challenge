import 'dart:ui';

import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';

enum ButtomStyleEnum {
  primary(textColor: AppColors.white, backgroundColor: AppColors.primary),
  secondary(textColor: AppColors.primary, backgroundColor: AppColors.white);

  final Color textColor;
  final Color backgroundColor;

  const ButtomStyleEnum({
    required this.textColor,
    required this.backgroundColor,
  });
}
