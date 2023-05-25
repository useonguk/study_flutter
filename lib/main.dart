
import 'package:flutter/material.dart';
import './main2.dart';

void main() {
  // print('123');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: QuizStart(),
    );
  }
}

class QuizStart extends StatefulWidget {
  const QuizStart({super.key});

  @override
  State<QuizStart> createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  String todayWorld = '오늘의단어';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('lib/images/logo.png'), 
            const Spacer(flex: 1,),
            const Text('퀴즈 풀러가기',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 32,
              ),),
            
            const Spacer(flex: 1,),
            chooseQuizButton(context),
            const Spacer(flex: 2,),
           // SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            TodayWord(todayWorld: todayWorld),
          ],
        ),
      ),
    );
  }

  IconButton chooseQuizButton(BuildContext context) {
    
    return IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const ChoseQuiz(),
                )
              );
            },
            icon: Image.asset('lib/images/button.png'),
            iconSize: 100,
        ) ;
  }
}

class TodayWord extends StatelessWidget {
  const TodayWord({
    super.key,
    required this.todayWorld,
  });

  final String todayWorld;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width * 0.8, 
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.only(bottom: 0),
      child: Center(
        child: Text(todayWorld,
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationThickness: 1
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
