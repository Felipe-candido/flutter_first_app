import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Portfólio'),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('PI-I')),
              Tab(child: Text('PI-II')),
              Tab(child: Text('PI-III')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.red.shade200),
            Container(color: Colors.blue.shade200),
            Container(color: Colors.green.shade200),
          ],
        ),
      ),
    );
  }
}
