import 'package:flutter/material.dart';

import 'screens/detail_screen.dart';
import 'screens/menu_screen.dart';

/// Named routes used across the app.
class Routes {
  static const String menu = '/menu';
  static const String vegetable = '/vegetable';
  static const String cheese = '/cheese';
  static const String fries = '/fries';
}

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: Routes.menu,
      routes: {
        Routes.menu: (context) => const MenuScreen(),
        Routes.vegetable: (context) => const DetailScreen(
              name: 'Vegetable Pizza',
              image: 'assets/images/vegetable_pizza.png',
              description:
                  'A garden-fresh pizza topped with capsicum, mushrooms, '
                  'olives and sweet corn.',
            ),
        Routes.cheese: (context) => const DetailScreen(
              name: 'Cheese Pizza',
              image: 'assets/images/cheese_pizza.png',
              description:
                  'A classic pizza loaded with melted mozzarella on a '
                  'rich tomato base.',
            ),
        Routes.fries: (context) => const DetailScreen(
              name: 'Box of Fries',
              image: 'assets/images/fries.png',
              description:
                  'Golden, crispy fries served hot in a box with a pinch '
                  'of salt.',
            ),
      },
    );
  }
}
