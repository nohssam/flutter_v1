import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    print('build 실행');

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (color == Colors.blue) {
                  color = Colors.red;
                } else {
                  color = Colors.blue;
                }
                print('색상변경: color : $color');
                // 빌드 함수를 다시 실행하라는 명령어
                setState(() {});
              }, // 색상 변경 함수 호출
              child: Text('색상변경'),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
