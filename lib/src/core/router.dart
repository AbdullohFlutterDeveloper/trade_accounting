import 'package:flutter/material.dart';
import 'package:trade_accounting/src/core/exported_packages.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: ((context) => StartPage()));
    }
    return null;
  } //
}