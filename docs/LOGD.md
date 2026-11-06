# Debugging & Error Log (LOGD)
- **Issue 1:** `toStringAsFixed isn't defined for the type 'Function'`
  - **Cause:** Called `orderTotal` without parentheses or arguments.
  - **Fix:** Added required positional arguments `(price, quantity)` and invoked `orderTotal()`.
- **Issue 2:** `Missing definition of main method` during `flutter test`.
  - **Cause:** Test file `test/order_summary_test.dart` lacked `void main()`.
  - **Fix:** Wrapped test cases inside `void main() { ... }`.