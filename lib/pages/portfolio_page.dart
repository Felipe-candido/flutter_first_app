import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/twitter_page.dart';
import 'package:flutter_first_app/pages/funny_sounds_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'xylophone_page.dart';

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
              Tab(icon: Icon(FontAwesomeIcons.gripLines), text: 'Xylophone'),
              Tab(icon: Icon(FontAwesomeIcons.gripVertical), text: 'Funny Sounds'),
            ],
          ),
        ),
        body: TabBarView(
          children: [TwitterPage(), XylophonePage(), FunnySoundsPage()],
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.github),
        ),
      ),
    );
  }
}
