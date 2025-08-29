import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/portfolio_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      home: PortfolioPage(),
    );
  }
}
