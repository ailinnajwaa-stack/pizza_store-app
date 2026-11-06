import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('menu lists the three items', (tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  testWidgets('tapping a card opens its detail screen', (tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    // Menu is no longer on top; the detail description is visible.
    expect(find.text('Pizza Store Menu'), findsNothing);
    expect(
      find.text(
        'A classic pizza loaded with melted mozzarella on a rich tomato base.',
      ),
      findsOneWidget,
    );
  });

  testWidgets('back button returns to the menu', (tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Box of Fries'));
    await tester.pumpAndSettle();
    expect(find.text('Pizza Store Menu'), findsNothing);

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    expect(find.text('Pizza Store Menu'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
  });
}
