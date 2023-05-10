import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:texttodo/src/home.dart';
import 'package:texttodo/src/page/normal/fifrst.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                //일반적인 경우
                //Navigator.of(context).pop();
                Get.back();
              },
              child: Text('뒤로히히')
            ),
            ElevatedButton(
              onPressed: (){
                //일반적인
                //Navigator.of(context).pushAndRemoveUntil(
                //  MaterialPageRoute(builder: (_)=>Home()), (route) => false);
                //Get.to(Home());
                //히스토리 지우기
                Get.offAll(Home());
              },
              child: Text('홍히히')
            )
          ],
        ),
      ),
    );
  }
}