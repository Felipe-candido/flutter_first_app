import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart' as f;

class TwitterPage extends StatelessWidget {
  const TwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -0.7),
            end: Alignment(0, 0.1),
            colors: [
              Colors.blue.shade100,
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                'assets/images/twitter.svg',
                width: 150,
                height: 150,
              ),
              Text(
                'Twitter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
              ),
              Text(f.faker.lorem.sentences(6).join('\n').trim()),
              Divider(height: 32),
              Text('Comentários'),
              Expanded(
                child: ListView(
                  children: List.generate(10, (index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          f.faker.image.loremPicsum(random: index * 3),
                        ),
                      ),
                      trailing: Icon(Icons.more_horiz),
                      title: Text(f.faker.person.name()),
                      subtitle: Text(
                        f.faker.lorem
                            .sentences(Random().nextInt(3))
                            .join('\n')
                            .trim(),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
