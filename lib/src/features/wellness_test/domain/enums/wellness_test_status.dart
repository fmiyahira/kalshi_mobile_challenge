import 'package:kalshi_mobile_challenge/src/core/theme/app_assets.dart';

enum WellnessTestStatusEnum {
  healthy(
    title: 'Congratulations!',
    description: 'Your financial wellness score is\n*Healthy.*',
    graphAsset: AppAssets.graphSuccess,
  ),
  average(
    title: 'There is room for improvement.',
    description: 'Your financial wellness score is\n*Average.*',
    graphAsset: AppAssets.graphWarning,
  ),
  unhealthy(
    title: 'Caution!',
    description: 'Your financial wellness score is\n*Unhealthy.*',
    graphAsset: AppAssets.graphDanger,
  );

  final String title;
  final String description;
  final String graphAsset;

  const WellnessTestStatusEnum({
    required this.title,
    required this.description,
    required this.graphAsset,
  });
}
