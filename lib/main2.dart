import 'package:flutter/material.dart';
import 'main3.dart';
import 'main.dart';

class ChoseQuiz extends StatelessWidget {
  const ChoseQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.15,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const QuizStart(),
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 9,),
                    Text('맞춤법 퀴즈',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text('단어의 알맞은 답을찾아 맞춤법를 늘리세요',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.15,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => QuizPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color:Color(0xFF92b4ec),
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 9,),
                    Text('어휘 퀴즈',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text('단어의 알맞은 답을찾아 어휘를 늘리세요',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}