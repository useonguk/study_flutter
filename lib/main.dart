import 'package:flutter/material.dart';
import 'package:myapp/main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  String todayWorld = 'baek';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
              Image.asset('images/logo.png'), 
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Text('퀴즈 풀러가기',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 32,
              ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const ChoseQuiz(),
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
              ),
              child: Image.asset('images/button.png'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
            Container(
              width:MediaQuery.of(context).size.width * 0.8, 
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.only(bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(todayWorld,
                    style: const TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

