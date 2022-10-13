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
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 57.6,
            vertical: 35.7,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          content: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('images/mata.jpg', 
                        scale: 8.8,
                        width: 77,
                        height: 77,
                      ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left:25.0),
                    child: const Text(
                      '바늘이',
                        style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24, 
                        fontFamily: 'Inter',
                      ),  
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                width: 450,
                color: const Color(0xffD9D9D9),
                margin: const EdgeInsets.only(top: 24,bottom: 22),
              ), 
              Row(
                children: const[
                  Text(
                    '저는 2022년 입학했고\n리엑트를 잘 사용합니다!.',
                    style: TextStyle(
                      fontSize: 23,
                      letterSpacing: 1.0,
                      fontWeight : FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: [ 
            Container(
              margin: const EdgeInsets.only(left: 25.0,bottom: 24.0,right: 64.0),
              child: ElevatedButton(
                style : ElevatedButton.styleFrom(
                  minimumSize: const Size(170, 65),
                  side: const BorderSide(
                    width: 1.0,
                    color: Color(0xff9B9B9B),
                  ),
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
                    color:Color(0xff9B9B9B),
                  ),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right:30.0,bottom: 20.0),
              child: ElevatedButton(
                style : ElevatedButton.styleFrom(
                minimumSize: const Size(170, 65),
                side: const BorderSide(width: 1.0, color: Colors.grey,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),primary: Colors.white,
                textStyle:const TextStyle(
                  fontSize: 20,
                  color : Colors.black,
                ),
              ),
            onPressed: () => Navigator.pop(context, 'chatting'), 
              child: const Text(
                '채팅하기',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ),
            ),
          ],
        )
      )
    );
  }
}