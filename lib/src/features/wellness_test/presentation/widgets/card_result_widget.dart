import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/enums/buttom_style_enum.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/extensions/string_extension.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/card_template_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_buttom.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';

class CardResultWidget extends StatelessWidget {
  final WellnessTestStatusEnum wellnessTestStatusEnum;
  const CardResultWidget({super.key, required this.wellnessTestStatusEnum});

  @override
  Widget build(BuildContext context) {
    return CardTemplateWidget(
      childContent: Column(
        children: [
          SvgPicture.asset(
            wellnessTestStatusEnum.graphAsset,
            height: AppSpacing.sm,
          ),
          SizedBox(height: AppSpacing.md),
          Text(
            wellnessTestStatusEnum.title,
            style: AppTextStyles.lgHeadingSmall,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: AppTextStyles.paragrath.copyWith(
                color: AppColors.secondaryDark,
              ),
              children: wellnessTestStatusEnum.description.formatBoldText(),
            ),
          ),
          SizedBox(height: AppSpacing.xl),
          CustomButtom(
            text: 'Return',
            onPressed: () {
              Navigator.of(context).pop();
            },
            buttomStyleEnum: ButtomStyleEnum.secondary,
          ),
        ],
      ),
    );
  }
}
