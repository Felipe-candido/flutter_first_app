import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/twitter_page.dart';
import 'package:flutter_first_app/pages/whatsapp_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'amazon_page.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter First App'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.squareTwitter), text: 'Twitter'),
              Tab(icon: Icon(FontAwesomeIcons.gripVertical), text: 'Xylophone'),
              Tab(icon: Icon(FontAwesomeIcons.gripLines), text: 'Funny Sounds'),
            ],
          ),
        ),
        body: TabBarView(
          children: [TwitterPage(), AmazonPage(), WhatsAppPage()],
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.github),
        ),
      ),
    );
  }
}
