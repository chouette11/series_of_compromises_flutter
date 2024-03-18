import 'package:flutter_template/data/firebase_auth_data_source.dart';
import 'package:flutter_template/page/root/component/mute_button.dart';
import 'package:flutter_template/provider/domain_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/provider/audio_provider.dart';
import 'package:flutter_template/util/constant/color_constant.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';

final _localPlayer = AudioPlayer(userAgent: "local");

class RootPage extends ConsumerStatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  ConsumerState<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  bool isChanged = false;

  @override
  void initState() {
    final isTutorial = ref.read(isTutorialProvider);
    if (!isTutorial) {
      ref.read(authProvider).requestNotification(context);
    }
    final audio = ref.read(justAudioProvider);
    audio.setAsset('assets/audios/title.mp3');
    audio.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ColorConstant.back,
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(onPressed: () {
                      context.push('/websocket');
                    }, child: Text('websocket')),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: MuteButton(_localPlayer),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
