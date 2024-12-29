import 'package:flutter/material.dart';

//stless
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool show = false;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SizedBox의 width: double.infinity은 가운데 정렬과 같음
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  true이면 다음 위젯이 보이고, false 이면 안보인다.
            // 리스트안에서 사용할 수 있는 문법
            if (show) GestureDetector(
                onTap: (){
                  setState(() {
                    color = color == Colors.blue? Colors.red:Colors.blue;
                  });
                },
                child: MyWidget(
                    color:color
                ),
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
                // 눌렀을 때 실행하는 메서드
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
                // 화면에 보여줄 위젯
                child: Text('클릭해서 보이기/안보이기'))
          ],
        ),
      ),
    );
  }
}

// 생명주기
class MyWidget extends StatefulWidget {
  final Color color;
  MyWidget({super.key, required this.color}) {
    print('1) StatefulWidget Constructor ');
  }

  @override
  // State<MyWidget> createState() => _MyWidgetState();
  // print를 하기 위해서 일반 함수로 변환
  State<MyWidget> createState() {
    print('2) StatefulWidget createState ');
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  // 삭제
 //  Color color = Colors.red;

  @override
  void initState() {
    print('3) StatefulWidget initState ');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('4) StatefulWidget didChangeDependencies ');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5) StatefulWidget build ');
    // 제스터 감지 삭제
    return Container(
      // widget 은 _MyWidgetState와 연동된 MyWidget를 가리치고 있음
      color: widget.color,
      width: 50.0,
      height: 50.0,
    );
  }

  @override
  void deactivate() {
    print('6) StatefulWidget deactivate ');
    super.deactivate();
  }

  @override
  void dispose() {
    print('7) StatefulWidget dispose ');
    super.dispose();
  }
}
