import 'package:flutter/material.dart';

void main() {
  // 플로터 앱을 실행한다.
  runApp(
      // MaterialApp은 항상 최상위에 위치한다.
      // (MaterialApp은 Material 디자인을 사용할 수 있다.)
      // Scaffold는 바로 아래에 위치한다. 구조를 쉽게 만들수 있도록 해줌
      // 위젯 -> Widget (화면에 무언가를 보여주는 요소)
      MaterialApp(
    // debug 띠 지우기
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // 배경색을 지정할 수 있음
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "HelloWorld",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ));
}