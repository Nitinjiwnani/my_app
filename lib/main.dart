import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),
      );

  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/images/pic$i.jpg')));

  Widget _buildList() {
    return ListView(
      children: [
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        _tile('heheeheh', '32 W dcsd ves', Icons.theaters),
        const Divider(),
        _tile('heheeheh', '32 W dcsd ves', Icons.restaurant),
        _tile('heheeheh', '32 W dcsd ves', Icons.restaurant),
        _tile('heheeheh', '32 W dcsd ves', Icons.restaurant),
        _tile('heheeheh', '32 W dcsd ves', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}
