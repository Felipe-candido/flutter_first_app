import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Portfólio'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.squareTwitter)),
              Tab(child: Icon(FontAwesomeIcons.amazon)),
              Tab(child: Icon(FontAwesomeIcons.whatsapp)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.blue.shade200),
            Container(color: Colors.amber.shade200),
            Container(color: Colors.green.shade200),
          ],
        ),
      ),
    );
  }
}
