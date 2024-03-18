import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/provider/presentation_providers.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPage extends ConsumerStatefulWidget {
  final WebSocketChannel channel;

  const WebSocketPage({Key? key, required this.channel}) : super(key: key);

  @override
  ConsumerState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends ConsumerState<WebSocketPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final tapPositionRatio = ref.watch(tapPositionListProvider);

    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          final localPosition = details.localPosition;
          final tapRatioX = localPosition.dx / size.width;
          final tapRatioY = localPosition.dy / size.height;
          print('tapRatioX: $tapRatioX, tapRatioY: $tapRatioY');
          ref.read(tapPositionListProvider.notifier).add(
                Offset(tapRatioX, tapRatioY),
              );
          print(ref.read(tapPositionListProvider));
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: Colors.blueAccent, // 視覚的なフィードバックのための背景色
              child: const Center(
                child: Text(
                  'タップしてください',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 150.0, // 上に重ねるBoxのサイズ
              height: 150.0,
              color: Colors.red,
            ),
            if (tapPositionRatio.length > 1)
              Positioned(
                left: tapPositionRatio[0]!.dx * size.width,
                top: tapPositionRatio[0]!.dy * size.height,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.sink.add(_controller.text);
      _controller.clear();
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
