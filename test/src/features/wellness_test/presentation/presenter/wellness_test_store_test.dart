import 'package:flutter_test/flutter_test.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/usecases/calculate_wellness_score_usecase.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store_states.dart';

void main() {
  late CalculateWellnessScoreUsecase calculateWellnessScoreUsecase;
  late WellnessTestStore wellnessTestStore;

  setUp(() {
    calculateWellnessScoreUsecase = CalculateWellnessScoreUsecaseImpl();

    wellnessTestStore = WellnessTestStore(
      calculateWellnessScoreUsecase: calculateWellnessScoreUsecase,
    );
  });

  group('WellnessTestStore', () {
    test('initial state is WellnessTestStoreInitialState', () {
      expect(wellnessTestStore.value, isA<WellnessTestStoreInitialState>());
    });

    test('| setAnnualIncome updates _annualIncome and triggers validation', () {
      wellnessTestStore.setAnnualIncome('50000');
      expect(
        wellnessTestStore.value,
        isA<WellnessTestStoreWaitingValuesState>(),
      );
    });

    test('| setMonthlyCosts updates _monthlyCosts and triggers validation', () {
      wellnessTestStore.setMonthlyCosts('2000');
      expect(
        wellnessTestStore.value,
        isA<WellnessTestStoreWaitingValuesState>(),
      );
    });

    test(
      '| valid inputs trigger WellnessTestStoreSuccessState with correct status',
      () {
        wellnessTestStore.setAnnualIncome('50000');
        wellnessTestStore.setMonthlyCosts('1000');
        expect(wellnessTestStore.value, isA<WellnessTestStoreSuccessState>());
        final successState =
            wellnessTestStore.value as WellnessTestStoreSuccessState;
        expect(
          successState.wellnessTestStatusEnum,
          WellnessTestStatusEnum.healthy,
        );
      },
    );

    test('| invalid inputs trigger WellnessTestStoreWaitingValuesState', () {
      wellnessTestStore.setAnnualIncome('0');
      wellnessTestStore.setMonthlyCosts('2000');
      expect(
        wellnessTestStore.value,
        isA<WellnessTestStoreWaitingValuesState>(),
      );
    });
  });
}
