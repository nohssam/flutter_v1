import 'package:flutter/material.dart';

// 이미지 위젯 만들기
class NumberToImage extends StatelessWidget {
  final int number;
  const NumberToImage ({
    required this.number
    ,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number.toString().split('')
          .map((k) => Image.asset(
          'asset/img/${k}.png',
          width: 70.0,
          height: 80.0,
          ),
      ).toList(),
    );
  }
}
