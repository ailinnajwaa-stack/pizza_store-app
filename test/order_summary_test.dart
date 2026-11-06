import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  test('orderTotal multiplies unit price by quantity', () {
    expect(orderTotal(12.50, 2), 25.00);
  });

  testWidgets('order summary shows item, quantity and total (RM 25.00)',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(
          itemName: 'Vegetable Pizza',
          quantity: 2,
          unitPrice: 12.50,
        ),
      ),
    );

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
    expect(find.text('Back'), findsOneWidget);
  });
}
