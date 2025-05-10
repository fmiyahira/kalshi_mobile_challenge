import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.onChanged,
    this.controller,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.description.copyWith(
            color: AppColors.secondaryDarkest,
          ),
        ),
        SizedBox(height: AppSpacing.xxs),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          keyboardType: TextInputType.number,
          style: AppTextStyles.lgHeadingSmall.copyWith(
            color: AppColors.secondaryDark,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: AppSpacing.xs,
            ),
            prefixIcon: UnconstrainedBox(
              child: SvgPicture.asset(
                AppAssets.dollarSignIcon,
                height: AppSpacing.md,
                width: AppSpacing.md,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.xxxs),
              borderSide: const BorderSide(color: AppColors.secondary50),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondary50),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondary50),
            ),
          ),
        ),
      ],
    );
  }
}
