import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white,
      child: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            AppAssets.logoTitle,
            height: AppSpacing.logoTitleHeight,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, AppSpacing.appBarHeight);
}
