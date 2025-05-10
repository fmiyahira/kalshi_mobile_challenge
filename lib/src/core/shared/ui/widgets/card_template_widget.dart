import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';

class CardTemplateWidget extends StatelessWidget {
  final Widget childContent;
  const CardTemplateWidget({super.key, required this.childContent});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                AppAssets.logoIcon,
                height: AppSpacing.logoIconHeight,
              ),
            ),
            SizedBox(height: AppSpacing.sm),
            childContent,
          ],
        ),
      ),
    );
  }
}
