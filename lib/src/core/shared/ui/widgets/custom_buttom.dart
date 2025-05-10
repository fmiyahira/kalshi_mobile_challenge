import 'package:flutter/material.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/enums/buttom_style_enum.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final ButtomStyleEnum buttomStyleEnum;
  final Function()? onPressed;

  const CustomButtom({
    super.key,
    required this.text,
    required this.buttomStyleEnum,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttomStyleEnum.backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            side:
                onPressed != null
                    ? BorderSide(color: AppColors.primary, width: 2)
                    : BorderSide.none,
            borderRadius: BorderRadius.circular(AppSpacing.xl),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.button.copyWith(
            color: buttomStyleEnum.textColor,
          ),
        ),
      ),
    );
  }
}
