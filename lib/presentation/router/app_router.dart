import 'package:counter/presentation/screens/home_screen.dart';
import 'package:counter/presentation/screens/second_screen.dart';
import 'package:counter/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    // final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/second':
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                title: 'Second Screen', color: Colors.redAccent));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                title: 'Third Screen', color: Colors.greenAccent));
      case '/':
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const HomeScreen(title: 'HomeScreen', color: Colors.blueAccent),
        );
    }
  }
}
