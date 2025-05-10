import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';

abstract class CalculateWellnessScoreUsecase {
  WellnessTestStatusEnum call({
    required double annualIncome,
    required double monthlyCosts,
  });
}

class CalculateWellnessScoreUsecaseImpl
    implements CalculateWellnessScoreUsecase {
  @override
  WellnessTestStatusEnum call({
    required double annualIncome,
    required double monthlyCosts,
  }) {
    final double annualCosts = monthlyCosts * 12;
    final double percent = (annualCosts / annualIncome) * 100;

    if (percent <= 25) {
      return WellnessTestStatusEnum.healthy;
    }

    if (percent > 25 && percent <= 75) {
      return WellnessTestStatusEnum.average;
    }

    return WellnessTestStatusEnum.unhealthy;
  }
}
