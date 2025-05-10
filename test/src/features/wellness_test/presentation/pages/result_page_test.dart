import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/result_page.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/card_result_widget.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/security_informations_widget.dart';

void main() {
  group('ResultPage', () {
    testWidgets('| should display CardResultWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ResultPage(
            wellnessTestStatusEnum: WellnessTestStatusEnum.healthy,
          ),
        ),
      );

      expect(find.byType(CardResultWidget), findsOneWidget);
    });

    testWidgets('| should display SecurityInformationsWidget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ResultPage(
            wellnessTestStatusEnum: WellnessTestStatusEnum.healthy,
          ),
        ),
      );

      expect(find.byType(SecurityInformationsWidget), findsOneWidget);
    });
  });
}
