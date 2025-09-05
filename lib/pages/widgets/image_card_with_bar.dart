import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageCardWithBar extends StatelessWidget {
  const ImageCardWithBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/twitter.svg'),
              ),
              Text(
                'Twitter',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          Image.asset(
            'assets/images/bluebird.jpg',
            height: 300,
            fit: BoxFit.cover,
          ),
          OverflowBar(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
        ],
      ),
    );
  }
}
