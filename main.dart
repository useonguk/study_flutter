import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:texttodo/src/page/named/fifrst.dart';
import 'package:texttodo/src/page/named/next.dart';
import 'package:texttodo/src/page/named/second.dart';
import 'package:texttodo/src/page/named/user.dart';
import 'package:texttodo/src/page/normal/fifrst.dart';
import 'package:texttodo/src/page/normal/second.dart';
import './src/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Home(),
      // 일반적인
      // initialRoute: "/",
      // routes: {
      //   "/":(context)=>Home(),
      //   "/first":(context)=>FirstNamedPage(),
      //   "/second":(context)=>SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: "/", page: ()=>Home(),transition: Transition.zoom),
        GetPage(name: "/first", page: ()=>FirstNamedPage(),transition: Transition.zoom),
        GetPage(name: "/second", page: ()=>SecondNamedPage(),transition: Transition.zoom),
        GetPage(name: "/next", page: ()=>NextPage(),transition: Transition.zoom),
        GetPage(name: "/user/:uid", page: ()=>UserPage())
      ],
    );
  }
}