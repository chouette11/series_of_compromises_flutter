import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/model/entity/position/position_entity.dart';
import 'package:flutter_template/provider/presentation_providers.dart';
import 'package:flutter_template/util/enum/object.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPage extends ConsumerStatefulWidget {
  final WebSocketChannel channel;

  const WebSocketPage({Key? key, required this.channel}) : super(key: key);

  @override
  ConsumerState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends ConsumerState<WebSocketPage> {
  @override
  void initState() {
    super.initState();
    widget.channel.stream.listen((e) {
      final text = e as String;
      if (!text.contains('サーバー') && text.contains('unity')) {
        final json = jsonDecode(text);
        final position = PositionEntity.fromJson(json);
        if (position.typeText == 'hero') {
          ref.read(objectPositionListProvider.notifier).add(position);
        }
        ref.read(objectPositionListProvider.notifier).update(position);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tapPositionList = ref.watch(objectPositionListProvider);

    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          final localPosition = details.localPosition;
          final tapRatioX = localPosition.dx / size.width;
          final tapRatioY = 1 - localPosition.dy / size.height;
          final id = const Uuid().v4();
          const isVisible = true;
          final position = PositionEntity(
            x: tapRatioX,
            y: 2,
            z: tapRatioY,
            typeText: ObjectTypeEnum.enemy.name,
            id: id,
            isVisible: isVisible,
            sender: "flutter",
          );
          print('tapRatioX: $tapRatioX, tapRatioY: $tapRatioY');
          if (tapRatioY < 0.2) {
            return;
          }
          ref.read(objectPositionListProvider.notifier).add(position);
          // 送信
          final text = jsonEncode(position.toJson());
          print(jsonEncode(position.toJson()));
          widget.channel.sink.add(text);
          print(ref.read(objectPositionListProvider));
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: Colors.white, // 視覚的なフィードバックのための背景色
              child: const Center(
                child: Text(
                  'タップしてください',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Positioned(
              left: tapPositionList.firstWhere((e) => e.typeText == "hero").x *
                  size.width,
              bottom:
                  tapPositionList.firstWhere((e) => e.typeText == "hero").z *
                      size.height,
              child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/images/yuusya.png')),
            ),
            SizedBox(
                width: size.height * 0.3,
                height: size.width * 0.3,
                child: Image.asset('assets/images/castle.png')),
            ...tapPositionList
                .where((e) => e.typeText == 'enemy')
                .map(
                  (e) => Visibility(
                    visible: e.isVisible,
                    child: Positioned(
                      left: e.x * size.width,
                      bottom: e.z * size.height,
                      child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/images/honoo.png')),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
