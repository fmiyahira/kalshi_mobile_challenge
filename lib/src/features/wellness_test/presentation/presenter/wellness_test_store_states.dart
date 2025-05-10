import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';

abstract class WellnessTestStoreState {}

class WellnessTestStoreInitialState extends WellnessTestStoreState {}

class WellnessTestStoreWaitingValuesState extends WellnessTestStoreState {}

class WellnessTestStoreSuccessState extends WellnessTestStoreState {
  final WellnessTestStatusEnum wellnessTestStatusEnum;

  WellnessTestStoreSuccessState({required this.wellnessTestStatusEnum});
}
