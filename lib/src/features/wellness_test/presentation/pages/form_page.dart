import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_app_bar_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/result_page.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
                      TextSpan(text: 'Let\'s find out your '),
                      TextSpan(
                        text: 'financial\nwellness score.',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppAssets.logoIcon,
                          height: AppSpacing.logoIconHeight,
                        ),
                      ),
                      SizedBox(height: AppSpacing.sm),
                      Center(
                        child: Text(
                          'Financial wellness test',
                          style: AppTextStyles.xsHeadingSmall,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Enter your financial information below',
                          style: AppTextStyles.paragrath.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                      SizedBox(height: AppSpacing.sm),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Annual income',
                            style: AppTextStyles.description.copyWith(
                              color: AppColors.secondaryDarkest,
                            ),
                          ),
                          SizedBox(height: AppSpacing.xxs),
                          TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
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
                                borderRadius: BorderRadius.circular(
                                  AppSpacing.xxxs,
                                ),
                                borderSide: const BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.sm),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Costs',
                            style: AppTextStyles.description.copyWith(
                              color: AppColors.secondaryDarkest,
                            ),
                          ),
                          SizedBox(height: AppSpacing.xxs),
                          TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
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
                                borderRadius: BorderRadius.circular(
                                  AppSpacing.xxxs,
                                ),
                                borderSide: const BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.secondary50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.sm),
                      SizedBox(
                        width: double.infinity,

                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ResultPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                AppSpacing.xl,
                              ),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            style: AppTextStyles.button.copyWith(
                              color: AppColors.white,
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
