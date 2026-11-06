import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  final String itemName;
  final int quantity;
  final double unitPrice;

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(itemName, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            Text('Quantity: $quantity'),
            const SizedBox(height: 4),
            Text('Unit price: RM ${unitPrice.toStringAsFixed(2)}'),
            const Divider(height: 32),
            Text(
              'Total: RM ${total.toStringAsFixed(2)}',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
