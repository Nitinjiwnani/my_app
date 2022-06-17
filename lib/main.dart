import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: Center(child: buildRow()),
      ),
    );
  }

  Widget buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/images/pic1.jpg')),
          Expanded(
            child: Image.asset('assets/images/pic2.jpg')),
          Expanded(
            child: Image.asset('assetd/images/pic3.jpg')),
        ],
      );

  Widget buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/images/pic1.jpg')),
          Expanded(
            child: Image.asset('assets/images/pic2.jpg')),
          Expanded(
            child: Image.asset('assets/images/pic3.jpg'))
        ],
      );
}
