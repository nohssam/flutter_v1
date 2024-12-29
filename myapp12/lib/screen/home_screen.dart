import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp12/constant/color.dart';
import 'package:myapp12/screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [123,456,789];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 제목과 아이콘이 있는 곳
              _Header(
                onPressed: onSettingIconPressed,
              ),
              // 숫자가 있는 곳
              _Body(numbers: numbers,),
              // 버튼이 있는 곳
              _Footer(
                onPressed: generateRandomNumber,
              )
            ],
          ),
        ),
      ),
    );
  }
  onSettingIconPressed(){
    // builder 함수에서 제공하는  context 와 같다
    // context는 위젯 트리에 대한 정복를 가지고 있음)
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (BuildContext context){
            return SettingScreen();
          },
      ),
    );
  }
  generateRandomNumber(){
      // 난수 생성
      final rand = Random();
      // 중복되는 값이 없음(set)
      final Set<int> newNumbers = {};
      while(newNumbers.length < 3){
        final randomNumber = rand.nextInt(1000);
        newNumbers.add(randomNumber);
      }
      setState(() {
        numbers = newNumbers.toList();
      });
   }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;
  const _Header({
    required this.onPressed
  ,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤 숫자 생성기',
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
        IconButton(
          color: redColor,
          onPressed: onPressed,
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers;
  const _Body({
    required this.numbers
    ,super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers.map((e) => e.toString().split(''))
            .map(
            (e) => Row(
              children: e.map(
                      (k) => Image.asset(
                        'asset/img/${k}.png',
                        width: 70.0,
                        height: 80.0,
                      )
              ).toList(),
            )
        ).toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;
  const _Footer({
    required this.onPressed,
    super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, foregroundColor: Colors.white),
      child: Text('생성하기!'),
    );
  }
}
