import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/portfolio_page.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SoLoud.instance.init();
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
