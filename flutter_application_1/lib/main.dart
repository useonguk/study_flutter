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
          content: Column(
            children: [
              //const Image(image: AssetImage('images/mata/jpg')),
              const Text(
                '바늘이',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                ),  
              ),
              Container(
                height: 1,
                width: 450,
                color: Colors.grey,
              ), 
              const Text(
                '저는 2022년 입학했고\n 리엑트를 잘 사용합니다~~.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight : FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [ 
            ElevatedButton(style : ElevatedButton.styleFrom(
              side: const BorderSide(width: 3.0, color: Colors.black,),
              textStyle:const TextStyle(
                fontSize: 20,
                color : Colors.black,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),primary: Colors.white,
            ),
              onPressed: () => Navigator.pop(context, 'cancel'), 
            child: const Text(
              '취소',
              style: TextStyle(
                  color:Colors.grey,
                ),
              )
            ),

            ElevatedButton(style : ElevatedButton.styleFrom(
              side: const BorderSide(width: 3.0, color: Colors.black,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),primary: Colors.white,
              textStyle:const TextStyle(
                fontSize: 20,
                color : Colors.black,
              ),
            ),
            //style : ButtonStyle : MaterialStatePropertyAll<Color>(Colors.white),
            onPressed: () => Navigator.pop(context, 'chatting'), 
            child: const Text('채팅하기',
              style: TextStyle(
                color: Colors.grey,
              ),))
          ],
        )
      )
    );
  }
}