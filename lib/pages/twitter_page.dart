import 'package:faker/faker.dart' as f;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Twitter',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          ),
          SvgPicture.asset('assets/images/twitter.svg', height: 150),
          Image.network(
            'https://images.pexels.com/photos/33541286/pexels-photo-33541286.jpeg',
            height: 300,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              textAlign: TextAlign.justify,
              f.faker.lorem.sentences(5).join(' '),
            ),
          ),
        ],
      ),
    );
  }
}
