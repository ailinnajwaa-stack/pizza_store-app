import 'package:flutter/material.dart';

import '../main.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _MenuCard(title: 'Vegetable Pizza', route: Routes.vegetable),
          _MenuCard(title: 'Cheese Pizza', route: Routes.cheese),
          _MenuCard(title: 'Box of Fries', route: Routes.fries),
        ],
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({required this.title, required this.route});

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.white),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
