import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';

class SecurityInformationsWidget extends StatelessWidget {
  const SecurityInformationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppSpacing.sm, 11, AppSpacing.sm, 11),
      child: Column(
        children: [
          SvgPicture.asset(AppAssets.lockIcon, height: AppSpacing.md),
          SizedBox(height: AppSpacing.sm),
          Text(
            'Your financial information is encrypted and secure. We\'ll never share or sell any of your personal data.',
            textAlign: TextAlign.center,
            style: AppTextStyles.description.copyWith(
              color: AppColors.secondaryDark,
            ),
          ),
        ],
      ),
    );
  }
}
