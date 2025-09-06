import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FunnySoundsPage extends StatelessWidget {
  const FunnySoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: 18,
        itemBuilder: (context, index) {
          return FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor:
                  Colors.primaries[index % Colors.primaries.length].shade200,
            ),
            onPressed: () {},
            child: Icon(FontAwesomeIcons.play, color: Colors.black38),
          );
        },
      ),
    );
  }
}
