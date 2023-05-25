import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String difficulty = '중';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeff0f0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
         // color: const Color(0xFFeff0f0),
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Stack(
                clipBehavior: Clip.none,
                // overflow: Overflow.visible,
                children: [
                  Container(
                   // width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.5,
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Wrap(
                          children: [
                            const Text('문제;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;',
                            style: TextStyle(
                              fontSize: 30,
                            ),),
                            Container(
                              width:50,
                              height: 30,
                              color: Colors.grey,
                              child: const Flexible(
                                child: TextField(),
                              ),
                            ),
                            const Text('?',
                            style: TextStyle(
                              fontSize: 30,
                            ),),
                          ],
                        ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 10,
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('난이도 : $difficulty'),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    right: 10,
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('듣고 빈칸을 채워주세요.',
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              IconButton(onPressed: (){
                Navigator.of(context).pop();
              },
                icon: Image.asset('lib/images/logo.png'),
                iconSize: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}