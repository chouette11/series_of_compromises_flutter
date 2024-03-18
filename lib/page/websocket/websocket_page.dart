import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPage extends StatefulWidget {
  final WebSocketChannel channel;

  const WebSocketPage({Key? key, required this.channel}) : super(key: key);

  @override
  _WebSocketPageState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends State<WebSocketPage> {
  final _controller = TextEditingController();
  Offset? tapPositionRatio;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          final localPosition = details.localPosition;
          final tapRatioX = localPosition.dx / size.width;
          final tapRatioY = localPosition.dy / size.height;
          print('tapRatioX: $tapRatioX, tapRatioY: $tapRatioY');
          setState(() {
            tapPositionRatio = Offset(tapRatioX, tapRatioY);
          });
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
            if (tapPositionRatio != null)
              Positioned(
                left: tapPositionRatio!.dx * size.width,
                top: tapPositionRatio!.dy * size.height,
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
