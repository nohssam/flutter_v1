import 'package:flutter/material.dart';
import 'package:myapp03/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상태바를 제외한 위치부터 위젯이 나옴(SafeArea)
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: colors
                  .map((e) => Container(
                        height: 50.0,
                        width: 50.0,
                        color: e,
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: colors
                  .map((e) => Container(
                        height: 50.0,
                        width: 50.0,
                        color: e,
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
