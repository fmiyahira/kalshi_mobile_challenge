import 'package:flutter_test/flutter_test.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/usecases/calculate_wellness_score_usecase.dart';

void main() {
  group('| CalculateWellnessScoreUsecaseImpl', () {
    late CalculateWellnessScoreUsecaseImpl usecase;

    setUp(() {
      usecase = CalculateWellnessScoreUsecaseImpl();
    });

    test(
      '| should return WellnessTestStatusEnum.healthy when percent <= 25',
      () {
        // Arrange
        const annualIncome = 100000.0;
        const monthlyCosts = 2000.0;

        // Act
        final result = usecase.call(
          annualIncome: annualIncome,
          monthlyCosts: monthlyCosts,
        );

        // Assert
        expect(result, WellnessTestStatusEnum.healthy);
      },
    );

    test(
      '| should return WellnessTestStatusEnum.average when 25 < percent <= 75',
      () {
        // Arrange
        const annualIncome = 100000.0;
        const monthlyCosts = 4000.0;

        // Act
        final result = usecase.call(
          annualIncome: annualIncome,
          monthlyCosts: monthlyCosts,
        );

        // Assert
        expect(result, WellnessTestStatusEnum.average);
      },
    );

    test(
      '| should return WellnessTestStatusEnum.unhealthy when percent > 75',
      () {
        // Arrange
        const annualIncome = 100000.0;
        const monthlyCosts = 8000.0;

        // Act
        final result = usecase.call(
          annualIncome: annualIncome,
          monthlyCosts: monthlyCosts,
        );

        // Assert
        expect(result, WellnessTestStatusEnum.unhealthy);
      },
    );
  });
}
