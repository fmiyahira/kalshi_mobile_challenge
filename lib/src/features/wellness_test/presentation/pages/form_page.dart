import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/enums/buttom_style_enum.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/extensions/string_extension.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/card_template_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_app_bar_widget.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_buttom.dart';
import 'package:kalshi_mobile_challenge/src/core/shared/ui/widgets/custom_text_form_field.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_colors.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_spacing.dart';
import 'package:kalshi_mobile_challenge/src/core/theme/app_text_styles.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/result_page.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store_states.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/security_informations_widget.dart';

class FormPage extends StatelessWidget {
  final WellnessTestStore wellnessTestStore;
  const FormPage({super.key, required this.wellnessTestStore});

  void _onContinueButtonPressed(
    BuildContext context, {
    required WellnessTestStatusEnum wellnessTestStatusEnum,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) =>
                ResultPage(wellnessTestStatusEnum: wellnessTestStatusEnum),
      ),
    );
  }

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
          child: ValueListenableBuilder<WellnessTestStoreState>(
            valueListenable: wellnessTestStore,
            builder: (context, state, child) {
              bool isValidForm = state is WellnessTestStoreSuccessState;

              return Column(
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
                            'Let\'s find out your *financial\nwellness score.*'
                                .formatBoldText(),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  CardTemplateWidget(
                    childContent: Column(
                      children: [
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
                        CustomTextFormField(
                          label: 'Annual Income',
                          inputFormatters: [
                            CurrencyTextInputFormatter.currency(
                              decimalDigits: 2,
                              symbol: '',
                            ),
                          ],
                          keyboardType: TextInputType.number,
                          onChanged: wellnessTestStore.setAnnualIncome,
                        ),
                        SizedBox(height: AppSpacing.sm),
                        CustomTextFormField(
                          label: 'Monthly Costs',
                          inputFormatters: [
                            CurrencyTextInputFormatter.currency(
                              decimalDigits: 2,
                              symbol: '',
                            ),
                          ],
                          keyboardType: TextInputType.number,
                          onChanged: wellnessTestStore.setMonthlyCosts,
                        ),
                        SizedBox(height: AppSpacing.sm),
                        CustomButtom(
                          text: 'Continue',
                          onPressed:
                              isValidForm
                                  ? () => _onContinueButtonPressed(
                                    context,
                                    wellnessTestStatusEnum:
                                        state.wellnessTestStatusEnum,
                                  )
                                  : null,
                          buttomStyleEnum: ButtomStyleEnum.primary,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  SecurityInformationsWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
