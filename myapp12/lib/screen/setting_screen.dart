import 'package:flutter/material.dart';
import 'package:myapp12/component/number_to_image.dart';
import 'package:myapp12/constant/color.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;
  const SettingScreen({
    required this.maxNumber,
    super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  // 안된다. 그래서 1000을 그대로 놔두고  initState()에 넣자
 // double maxNumber = widget.maxNumber.toDouble();

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Number(
                maxNumber: maxNumber,
              ),
              _Slider(
                value: maxNumber,
                onChanged: onSliderChanged,
              ),
              _Button(
                onPressed:onSavePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
  onSavePressed(){
    // 전달할 값을 전달한다.
  Navigator.of(context).pop(maxNumber.toInt());
  }
  onSliderChanged(double value){
    setState(() {
      maxNumber = value;
    });
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;
  const _Button({
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text('저장 !'),
    );
  }
}

class _Number extends StatelessWidget {
  final double maxNumber;
  const _Number({required this.maxNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: NumberToImage(number: maxNumber.toInt())
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  final double value ;
  final ValueChanged<double> onChanged;

  const _Slider({
    required this.value,
    required this.onChanged,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Slider(
      // 슬라이더의 값
        value: value,
        min:1000,
        max: 100000,
        activeColor: redColor,
        // 변경 됐을 때
        onChanged: onChanged,
    );
  }
}
