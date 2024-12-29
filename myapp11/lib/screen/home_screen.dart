import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold는 전체 화면 차지한다.
    return Scaffold(
      body: Center(
      // 부모에 의헤서 가운데 정렬됨
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.red,
          child: Align(
            // -1 왼쪽, 0 중앙, 1 오른쪽
            // -1 위쪽, 0 중앙, 1 아래
            alignment: Alignment(
              0,-1
            ),
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
