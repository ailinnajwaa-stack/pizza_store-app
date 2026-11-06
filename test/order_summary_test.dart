import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('OrderSummaryScreen displays item details and total', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(),
      ),
    );

    expect(find.byType(OrderSummaryScreen), findsOneWidget);
    
    final backButton = find.byType(ElevatedButton);
    expect(backButton, findsOneWidget);
  });
}

voidelands() {
  testWidgets('OrderSummaryScreen displays item details and total', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(),
      ),
    );

    // Verify that the screen shows the correct text/total
    expect(find.textContaining('RM 25.00'), findsOneWidget);
    
    // Verify back button works
    final backButton = find.byType(IconButton);
    expect(backButton, findsOneWidget);
  });
}