import 'package:kalshi_mobile_challenge/src/core/plugins/injector/app_injector.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/usecases/calculate_wellness_score_usecase.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store.dart';

class RegisterDependencies {
  static void register() {
    AppInjector.I.registerFactory<CalculateWellnessScoreUsecase>(
      () => CalculateWellnessScoreUsecaseImpl(),
    );
    AppInjector.I.registerFactory<WellnessTestStore>(
      () =>
          WellnessTestStore(calculateWellnessScoreUsecase: AppInjector.I.get()),
    );
  }
}
