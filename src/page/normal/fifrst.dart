import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:texttodo/src/page/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('frist page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                //일반적인 경우
                // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstPage(),
                // ) );
                //getx
                Get.to(SecondPage());
              },
              child: Text('다음히히')
            )
          ],
        ),
      ),
    );
  }
}