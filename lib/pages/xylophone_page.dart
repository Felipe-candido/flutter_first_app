import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(color: Colors.red, onTap: () {}),
          CustomButton(onTap: () {}),
          CustomButton(color: Colors.orange, onTap: () {}),
          CustomButton(color: Colors.yellow, onTap: () {}),
          CustomButton(color: Colors.green, onTap: () {}),
          CustomButton(color: Colors.blue, onTap: () {}),
          CustomButton(color: Colors.indigo, onTap: () {}),
          CustomButton(color: Colors.purple, onTap: () {}),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color = Colors.deepPurple,
    required this.onTap,
  });

  final MaterialColor color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: onTap,
        child: Icon(Icons.music_note),
      ),
    );
  }
}
