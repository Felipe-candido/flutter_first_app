import 'package:flutter/material.dart';

import 'package:flutter_first_app/services/audio_service.dart';

class XylophonePage extends StatelessWidget {
  final AudioService audioService = AudioService();

  XylophonePage({super.key});

  Future<void> playSound(BuildContext context, int soundNumber) async {
    try {
      await audioService.playSound(soundNumber);
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao reproduzir som: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(
            color: Colors.red,
            onTap: () => playSound(context, 1),
          ),
          CustomButton(
            color: Colors.orange,
            onTap: () => playSound(context, 2),
          ),
          CustomButton(
            color: Colors.yellow,
            onTap: () => playSound(context, 3),
          ),
          CustomButton(
            color: Colors.green,
            onTap: () => playSound(context, 4),
          ),
          CustomButton(
            color: Colors.blue,
            onTap: () => playSound(context, 5),
          ),
          CustomButton(
            color: Colors.indigo,
            onTap: () => playSound(context, 6),
          ),
          CustomButton(
            color: Colors.purple,
            onTap: () => playSound(context, 7),
          ),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color.shade600,
            elevation: 5,
          ),
          onPressed: onTap,
          child: Icon(Icons.music_note, color: Colors.white54, size: 32),
        ),
      ),
    );
  }
}
