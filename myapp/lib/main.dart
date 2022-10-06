import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: Center(
          child: DialogExample(),
        ),
      )
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
          'test 버튼',
          style: TextStyle(
            color:Colors.orange
          ),
      ),
      onPressed: () => showDialog<String>(
        context: context,
        builder:(BuildContext context) => AlertDialog(
          title: const Text('바늘이'),
          content: const Text('저는 리엑트를 잘 다룹니다 \n 2021년에 입학했어요'),
          actions: [
            ElevatedButton(style : ElevatedButton.styleFrom(
              textStyle:const TextStyle(
                fontSize: 20,
                color : Color(0x9B9B9B),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              //ButtonStyle(
              // backgroundColor: white,
              //),
            ),
              onPressed: () => Navigator.pop(context, 'cancel'), 
            child: const Text('취소')),

            ElevatedButton(style : ElevatedButton.styleFrom(),
            onPressed: () => Navigator.pop(context, 'chatting'), 
            child: const Text('채팅하기'))
          ],
        )
      )
    );
  }
}