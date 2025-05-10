import 'package:flutter/material.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/extensions/string_extension.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_app_bar_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/card_result_widget.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/security_informations_widget.dart';

class ResultPage extends StatelessWidget {
  final WellnessTestStatusEnum wellnessTestStatusEnum;
  const ResultPage({super.key, required this.wellnessTestStatusEnum});

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
                    children:
                        'Here\'s your *financial wellness\nscore.*'
                            .formatBoldText(),
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.md),
              CardResultWidget(wellnessTestStatusEnum: wellnessTestStatusEnum),
              SizedBox(height: AppSpacing.md),
              SecurityInformationsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
