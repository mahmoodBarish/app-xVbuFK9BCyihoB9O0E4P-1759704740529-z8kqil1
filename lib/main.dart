import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/onboarding_screen.dart';
import 'screens/high_fidelity_home_screen.dart';
import 'screens/detail_item_screen.dart';
import 'screens/order_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    GoRoute(
      path: '/high_fidelity_home',
      builder: (BuildContext context, GoRouterState state) {
        return const HighFidelityHomeScreen();
      },
    ),
    GoRoute(
      path: '/detail_item',
      builder: (BuildContext context, GoRouterState state) {
        return const DetailItemScreen();
      },
    ),
    GoRoute(
      path: '/order',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderScreen();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: _router,
    );
  }
}
