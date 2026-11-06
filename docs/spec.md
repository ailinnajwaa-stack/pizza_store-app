# Order Summary Screen: Mini-Spec

- **Inputs:** item name (String), quantity (int), unit price (double, RM).
- **Output:** a screen showing the item name, quantity, unit price and total price.
- **Rules:** total must be computed with `orderTotal` from `lib/order.dart`; money shown as `RM 0.00`; a Back button calls `Navigator.pop`.
- **Out of scope:** payment, editing the order, persistence, and any change to the Pizza Store menu or detail screens.
- **Check:** `test/order_summary_test.dart` passes for Vegetable Pizza, quantity 2, RM 12.50 each, showing `Total: RM 25.00`; `flutter analyze` and `flutter test` are clean.
