import 'package:faker/faker.dart' as f;
import 'package:flutter/material.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List.generate(10, (index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                f.faker.image.loremPicsum(
                  width: 100,
                  height: 100,
                  random: index * 5,
                ),
              ),
            ),
            title: Text(f.faker.person.name()),
            subtitle: Text(f.faker.lorem.sentence()),
            trailing: Icon(Icons.more_horiz),
          );
        }),
      ),
    );
  }
}
