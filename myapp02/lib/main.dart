import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

// StatelessWidget 자동으로 만들기
// StatelessElement 는 빌드가 존재해야 한다.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 335CB0
      backgroundColor: Color(0xFF335CB0),
      // Padding 은 반드시 padding 존재해야 한다.
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          //vertical: ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/logo.png'),
            // 중간을 차지하는 공간(SizedBox) = 간격처리
            SizedBox(
              height: 28.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
