import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2),
        (timer){
          int curr = controller.page!.toInt();
          int next = curr + 1;
          if(next > 4){
            next = 0 ;
          }
          // 이동 기능
          controller.animateToPage(next,
              duration: Duration(milliseconds: 500),
              // 스타일
              curve: Curves.linear);
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 기본값이 비율 그대로 유지 하기 위해서 위, 아래가 빈 칸이 나올수 있다.
      body: PageView(
        controller: controller,
        children: [1,2,3,4,5]
            .map(
                (e) => Image.asset(
                    'asset/img/image_${e}.jpeg',
                    // 화면이 짤리 수 있다.
                    fit: BoxFit.cover,
                ),
             ).toList(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if(timer != null){
      timer!.cancel();
    }
    controller.dispose();
  }
}
