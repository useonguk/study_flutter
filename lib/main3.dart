import 'package:flutter/material.dart';
import 'main2.dart';

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
      body: Container(
        color: const Color(0xFFeff0f0),
        width: MediaQuery.of(context).size.width,
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
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5,
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
                ),
                Positioned(
                  top: -30,
                  left: 10,
                  child: Container(
                    width: 200,
                    height: 50,
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
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  right: -130,
                  child: Container(
                    color: Colors.green,
                    width: 200,
                    height: 200,
                    child: const Column(
                      children: [
                        Text('히사시부리'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: const  Text('뒤로가기(임시)'),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ChoseQuiz(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}