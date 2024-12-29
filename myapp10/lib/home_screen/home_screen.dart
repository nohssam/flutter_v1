import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 강도를 100-900 까지 넣을 수 잇다.
      backgroundColor: Colors.pink[100],
      // 안전지대, 시스템 관련된 글자들이 표현되는 부분, 노치 를 제외한 영역
      // 기본값이  true이다.
      body: SafeArea(
        // top: true,
        // bottom: false,
        // left: true,
        // right: true,

        //  위의 것과 같다
        bottom: false,
        // SizedBox는 높이와 너비를 정하는데 편한 위젯이다.(크기를 정하기 위한 위젯)
        child: SizedBox(
          // 해당 위젯이 부모 위젯의 가용한 너비를 모두 차지하도록 설정
          // width: double.infinity,
          // 화면의 전체 너비를 가져와 위젯의 너비로 설정
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _Top(selectedDate: selectDate,
                  onPressed:onHartPressed
              ),
              _Bottom(),
            ],
          ),
        ),
      ),
    );
  }

 void onHartPressed(){
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.white,
            height: 300.0,
            child: CupertinoDatePicker(
              // 날짜만 선택
              mode: CupertinoDatePickerMode.date,
              initialDateTime: selectDate,
              // 오늘 이후로는 선택할 수 없음
              maximumDate: DateTime.now(),
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  selectDate = date ;
                });
              },
              // 년월일
              dateOrder: DatePickerDateOrder.ymd,
            ),
          ),
        );
      },
    );
  }
}

class _Top extends StatefulWidget {
  final DateTime selectedDate;
  final VoidCallback? onPressed;
  const _Top({
    required this.selectedDate,
    required this.onPressed,
    super.key});

  @override
  State<_Top> createState() => _TopState();
}

class _TopState extends State<_Top> {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final textTheme = Theme.of(context).textTheme;
    return // 1:1 로 비율처리
        Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              'U&I',
              style: textTheme.displayLarge,
            ),
            Text(
              '우리 처음 만난 날',
              style: textTheme.bodyLarge,
            ),
            Text(
              '${widget.selectedDate.year}. ${widget.selectedDate.month}. ${widget.selectedDate.day}',
              style: textTheme.bodyMedium,
            ),
            IconButton(
              iconSize: 60.0,
              color: Colors.red,
              onPressed: widget.onPressed,
              icon: Icon(
                Icons.favorite, // 하트모양 아이콘
              ),
            ),
            Text(
              // 차이의 날짜의 일의 차이이
              // 오늘부터 1일
              'D + ${now.difference(widget.selectedDate).inDays + 1}',
              style: textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset('asset/img/middle_image.png'),
      ),
    );
  }
}

