import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_app_bar_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.sm,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: AppTextStyles.subtitle.copyWith(
                      color: AppColors.primary,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Here\'s your '),
                      TextSpan(
                        text: 'financial wellness\nscore.',
                        style: AppTextStyles.subtitle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.md),
              Card(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.logoIcon,
                          height: AppSpacing.logoIconHeight,
                        ),
                      ),
                      SizedBox(height: AppSpacing.md),
                      SvgPicture.asset(
                        AppAssets.graphSuccess,
                        height: AppSpacing.sm,
                      ),
                      SizedBox(height: AppSpacing.md),
                      Text(
                        'Congratulations!',
                        style: AppTextStyles.lgHeadingSmall,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: AppTextStyles.paragrath.copyWith(
                            color: AppColors.secondaryDark,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Your financial wellness score is '),
                            TextSpan(
                              text: '\nHealthy.',
                              style: AppTextStyles.paragrath.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.xl),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: AppColors.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppSpacing.xl,
                              ),
                            ),
                          ),
                          child: Text(
                            'Return',
                            style: AppTextStyles.button.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.logoIcon,
                          height: AppSpacing.logoIconHeight,
                        ),
                      ),
                      SizedBox(height: AppSpacing.md),
                      SvgPicture.asset(
                        AppAssets.graphWarning,
                        height: AppSpacing.sm,
                      ),
                      SizedBox(height: AppSpacing.md),
                      Text(
                        'There is room for\nimprovement.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.lgHeadingSmall,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: AppTextStyles.paragrath.copyWith(
                            color: AppColors.secondaryDark,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Your financial wellness score is '),
                            TextSpan(
                              text: '\nAverage.',
                              style: AppTextStyles.paragrath.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.xl),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: AppColors.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppSpacing.xl,
                              ),
                            ),
                          ),
                          child: Text(
                            'Return',
                            style: AppTextStyles.button.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.logoIcon,
                          height: AppSpacing.logoIconHeight,
                        ),
                      ),
                      SizedBox(height: AppSpacing.md),
                      SvgPicture.asset(
                        AppAssets.graphDanger,
                        height: AppSpacing.sm,
                      ),
                      SizedBox(height: AppSpacing.md),
                      Text('Caution!', style: AppTextStyles.lgHeadingSmall),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: AppTextStyles.paragrath.copyWith(
                            color: AppColors.secondaryDark,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Your financial wellness score is '),
                            TextSpan(
                              text: '\nUnhealthy.',
                              style: AppTextStyles.paragrath.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.xl),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: AppColors.primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppSpacing.xl,
                              ),
                            ),
                          ),
                          child: Text(
                            'Return',
                            style: AppTextStyles.button.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.md),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.sm,
                  11,
                  AppSpacing.sm,
                  11,
                ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
