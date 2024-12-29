import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: CodeFactoryWidget(),
        )
    );
  }
}
// StatelessWidget 생명주기 : 생성자가 실행되고 빌드 함수가 실행 된다.
class CodeFactoryWidget extends StatelessWidget{
  CodeFactoryWidget({super.key}){
        print('----- 생성자 -----');
  }

  @override
  Widget build(BuildContext context) {
    print('------ 빌드 -------');
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }
}