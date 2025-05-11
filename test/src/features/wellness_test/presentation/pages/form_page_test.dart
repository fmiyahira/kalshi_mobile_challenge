import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kalshi_mobile_challenge/src/core/plugins/injector/app_injector.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/domain/enums/wellness_test_status.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/form_page.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/result_page.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/presenter/wellness_test_store_states.dart';
import 'package:mocktail/mocktail.dart';

class MockWellnessTestStore extends Mock implements WellnessTestStore {}

void main() {
  late MockWellnessTestStore mockWellnessTestStore;

  setUp(() {
    mockWellnessTestStore = MockWellnessTestStore();
    AppInjector.I.registerFactory<WellnessTestStore>(
      () => mockWellnessTestStore,
    );

    registerFallbackValue(WellnessTestStoreInitialState());
    registerFallbackValue(
      WellnessTestStoreSuccessState(
        wellnessTestStatusEnum: WellnessTestStatusEnum.healthy,
      ),
    );
  });

  tearDown(() {
    AppInjector.I.unregister<WellnessTestStore>();
  });

  group('FormPage', () {
    testWidgets('| FormPage displays all widgets correctly', (tester) async {
      when(
        () => mockWellnessTestStore.value,
      ).thenReturn(WellnessTestStoreInitialState());

      await tester.pumpWidget(MaterialApp(home: FormPage()));

      expect(find.text('Financial wellness test'), findsOneWidget);
      expect(
        find.text('Enter your financial information below'),
        findsOneWidget,
      );
      expect(find.text('Annual Income'), findsOneWidget);
      expect(find.text('Monthly Costs'), findsOneWidget);
      expect(find.text('Continue'), findsOneWidget);
    });

    testWidgets('| Continue button is disabled when form is invalid', (
      tester,
    ) async {
      when(
        () => mockWellnessTestStore.value,
      ).thenReturn(WellnessTestStoreInitialState());

      await tester.pumpWidget(MaterialApp(home: FormPage()));

      final continueButton = find.byWidgetPredicate(
        (Widget w) => w is ElevatedButton && w.onPressed == null,
      );
      expect(continueButton, findsOneWidget);
    });

    testWidgets('Continue button navigates to ResultPage when form is valid', (
      tester,
    ) async {
      when(() => mockWellnessTestStore.value).thenReturn(
        WellnessTestStoreSuccessState(
          wellnessTestStatusEnum: WellnessTestStatusEnum.healthy,
        ),
      );

      await tester.pumpWidget(MaterialApp(home: FormPage()));

      final continueButton = find.byWidgetPredicate(
        (Widget w) => w is ElevatedButton && w.onPressed != null,
      );
      expect(continueButton, findsOneWidget);

      await tester.tap(continueButton);
      await tester.pumpAndSettle();

      expect(find.byType(ResultPage), findsOneWidget);
    });
  });
}
