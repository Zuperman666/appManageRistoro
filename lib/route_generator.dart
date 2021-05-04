import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interface.dart';
import 'package:flutter_sala/main.dart';
import 'package:flutter_sala/pages/menu.dart';
import 'package:flutter_sala/pages/ordine.dart';
import 'package:flutter_sala/pages/table.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case '/Order':
        if (args is Data) {
          //Check for instance here
          return MaterialPageRoute(
            builder: (_) => Order(args),
          );
        }
        return _errorRoute();
      case '/Table':
        return MaterialPageRoute(
          builder: (_) => TablePAge(),
        );
      case '/Menu':
        if (args is Data) {
          //Check for instance here
          return MaterialPageRoute(
            builder: (_) => Menu(args),
          );
        }
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
