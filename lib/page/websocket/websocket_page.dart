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
  List<String> unityPositionList = [];

  @override
  void initState() {
    super.initState();
    widget.channel.stream.listen((e) {
      setState(() {
        unityPositionList.add(e);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tapPositionList = ref.watch(tapPositionListProvider);
    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          final localPosition = details.localPosition;
          final tapRatioX = localPosition.dx / size.width;
          final tapRatioY = localPosition.dy / size.height;
          print('tapRatioX: $tapRatioX, tapRatioY: $tapRatioY');
          if (tapRatioY > 0.8) {
            return;
          }
          ref
              .read(tapPositionListProvider.notifier)
              .add(Offset(tapRatioX, tapRatioY));
          // 送信
          final id = const Uuid().v4();
          const isVisible = true;
          final position = PositionEntity(x: tapRatioX, y: 2, z: tapRatioY, typeText: ObjectTypeEnum.enemy.name, id: id, isVisible: isVisible);
          final text = jsonEncode(position.toJson());
          print(jsonEncode(position.toJson()));
          widget.channel.sink.add(text);
          print(ref.read(tapPositionListProvider));
          print('unityPositionList: $unityPositionList');
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
              top: 0.5 * size.height,
              left: 0.5 * size.width,
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
                .map(
                  (e) => Positioned(
                    left: e.dx * size.width,
                    top: e.dy * size.height,
                    child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/honoo.png')),
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
