# Specification: Order Summary Screen
- **Inputs:** Order details including item name, quantity, and total price from `lib/order.dart`.
- **Output:** An `OrderSummaryScreen` widget displaying the item name, quantity, and total price.
- **Rules:** Must include a Back button using `Navigator.pop()` and correctly compute/display `orderTotal`.
- **Out of Scope:** Payment gateway integration and persistent database storage.
- **Check:** Verified via automated widget tests (`test/order_summary_test.dart`) and static analysis.