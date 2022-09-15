import 'package:flutter/material.dart';
import 'package:myapp/widgets/a.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget()
    );
  }
}


class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
void showDialog(){
      AlertDialog(
        title: Text("hello"),
      );
    }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children:[
    
            Image.asset("img/img.jpg"),
          const Test(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
      ),
              onPressed: () {
                showDialog();
              },
              child: const Text('새로 시작하기'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
      ),
              onPressed: () {},
              child: const Text('로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
