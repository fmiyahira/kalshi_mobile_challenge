import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/widgets/card_result_widget.dart';

void main() {
  group('| CardResultWidget', () {
    testWidgets('| displays healthy status correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CardResultWidget(
            wellnessTestStatusEnum: WellnessTestStatusEnum.healthy,
          ),
        ),
      );
      expect(find.text('Congratulations!'), findsOneWidget);
      expect(find.byType(CardResultWidget), findsOneWidget);
    });

    testWidgets('| displays average status correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CardResultWidget(
            wellnessTestStatusEnum: WellnessTestStatusEnum.average,
          ),
        ),
      );
      expect(find.text('There is room for improvement.'), findsOneWidget);
      expect(find.byType(CardResultWidget), findsOneWidget);
    });

    testWidgets('| displays unhealthy status correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CardResultWidget(
            wellnessTestStatusEnum: WellnessTestStatusEnum.unhealthy,
          ),
        ),
      );
      expect(find.text('Caution!'), findsOneWidget);
      expect(find.byType(CardResultWidget), findsOneWidget);
    });
  });
}
