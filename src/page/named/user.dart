import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nextjs'),
      ),
      body: Center(
        child: Column(
          children: [
            //Text("${Get.arguments['name']} : ${Get.arguments['age']}"),
            Text("${(Get.parameters['uid'])}"),
            Text("${(Get.parameters['name'])}데스네"),
            Text("${(Get.parameters['age'])}늙었다 데스"),
            ElevatedButton(
              child: Text("뒤로히히"),
              onPressed: (){
                Get.back();
              },
            )
          ]
        ),
      ),
    );
  }
}