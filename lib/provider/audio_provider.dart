import 'package:audioplayers/audioplayers.dart';
import 'package:riverpod/riverpod.dart';

final audioProvider = Provider((_) {
  final player = AudioPlayer();
  return player;
});

final justAudioProvider = Provider((ref) {
  final isMute = ref.watch(isMuteProvider);
});

final isMuteProvider = StateProvider((ref) => false);

final audioCacheProvider = Provider((_) => AudioCache());

final buttonSoundProvider = StateProvider<String>((ref) => '');

final notSoundProvider = StateProvider((ref) => '');
