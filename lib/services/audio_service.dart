import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_soloud/flutter_soloud.dart';

class AudioService {  
  Future<void> playSound(int soundNumber, {bool isWav = true}) async {
    
    final String asset = 'assets/audio/audio$soundNumber.${isWav ? 'wav' : 'mp3'}';
    AudioSource? audioSource;
      
    try {
      await SoLoud.instance.disposeAllSources();
      
      if (kIsWeb) {
        audioSource = await SoLoud.instance.loadAsset(
          asset,
          mode: LoadMode.disk,
        );
      } else {
        audioSource = await SoLoud.instance.loadAsset(asset);
      }

      await SoLoud.instance.play(audioSource);
    } catch (e) {
      log('Erro ao reproduzir áudio: $e');
      rethrow;
    }
  }
}
