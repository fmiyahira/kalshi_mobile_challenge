import 'package:flutter/material.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/usecases/calculate_wellness_score_usecase.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store_states.dart';

class WellnessTestStore extends ValueNotifier<WellnessTestStoreState> {
  final CalculateWellnessScoreUsecase calculateWellnessScoreUsecase;
  WellnessTestStore({required this.calculateWellnessScoreUsecase})
    : super(WellnessTestStoreInitialState());

  double _annualIncome = 0.0;
  double _monthlyCosts = 0.0;

  void setAnnualIncome(String value) {
    _annualIncome = double.tryParse(value.replaceAll(',', '')) ?? 0.0;
    _validateValues();
  }

  void setMonthlyCosts(String value) {
    _monthlyCosts = double.tryParse(value.replaceAll(',', '')) ?? 0.0;
    _validateValues();
  }

  void _validateValues() {
    if (_annualIncome > 0 && _monthlyCosts > 0) {
      final WellnessTestStatusEnum status = calculateWellnessScoreUsecase(
        annualIncome: _annualIncome,
        monthlyCosts: _monthlyCosts,
      );

      value = WellnessTestStoreSuccessState(wellnessTestStatusEnum: status);
      return;
    }

    value = WellnessTestStoreWaitingValuesState();
  }
}
