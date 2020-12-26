import 'package:dashboard_ui/Dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        'dashboard': (context) => Dashboard(),
      },
      home: Dashboard(),
    );
  }
}
