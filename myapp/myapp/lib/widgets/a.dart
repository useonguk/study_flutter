import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "data", style: TextStyle(fontSize: 20, color: Colors.black),
    );
  }
}