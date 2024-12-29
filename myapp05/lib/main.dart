import 'package:flutter/material.dart';
import 'package:myapp05/screen/home_screen.dart';

void main() {
  // Flutter 프레임 워크가 실행할 준비가 될때까지 기다린다.
  // 원래는 runApp  실행할때 자동으로 실행이되는데
  // 지금은 홈 스트린에서 지금 컨트롤러를 스테이트레스윗에서 쓰기 때문에 직접 한번 실행해 줘야 되는 것 뿐이다.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
