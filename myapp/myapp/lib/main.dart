import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body:const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:
        <Widget>[
          const Icon(
            Icons.home,
            color: Colors.red,
            size:60.0,
            semanticLabel: '집',
          ),
          const Text(
            '공부,혼자 하지 말고 열풍타에서 함께 하세요!',
            style: TextStyle(fontWeight: FontWeight.bold),
            
            ),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('버튼 1'),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('버튼 2'),
          ),
        ],
      ),
    );
  }
}
