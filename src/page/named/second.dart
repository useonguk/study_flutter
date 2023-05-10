import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:texttodo/src/home.dart';
import 'package:texttodo/src/page/normal/fifrst.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second named page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text('뒤로히히')
            ),
            ElevatedButton(
              onPressed: (){
                //히스토리 지우기
                Get.offAllNamed("/");
              },
              child: Text('홍히히')
            )
          ],
        ),
      ),
    );
  }
}