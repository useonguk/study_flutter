import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:texttodo/src/page/normal/fifrst.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
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
                Get.to(FirstPage());
              },
              child: Text('히히')
            ),
            ElevatedButton(
              onPressed: (){
                //getx
                Get.toNamed("/first");
              },
              child: Text('named히히')
            ),
            ElevatedButton(
              onPressed: (){
                //getx
                // Get.toNamed("/next", arguments: {"name":"이름", "age":"100"});
                //class 넘기기
                Get.toNamed("/next", arguments: User(name: '잉간', age: 100));
                //Get.to(FirstPage(), arguments: '개념');

              },
              child: Text('아규먼트전달')
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed("user/28357?name=효효&age=21");
              },
              child: Text('동적url')
            ),
          ],
        ),
      ),
    );
  }
}

class User{
  // String name;
  // int age;
  String? name;
  int? age;  
  User(
    {
      // required this.name,
      // required this.age
      this.name,
      this.age
    }
  );
}