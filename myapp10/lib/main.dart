import 'package:flutter/material.dart';
import 'package:myapp10/home_screen/home_screen.dart';


void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
            // buttonTheme: ButtonTheme(child: child),

          // 기본 폰트 적용
            fontFamily: 'sunflower',
            textTheme: TextTheme(
              displayLarge: TextStyle(
                color: Colors.white,
                fontSize: 80.0,
                fontFamily: 'parisienne'
              ),
              displayMedium: TextStyle(
                color: Colors.white,
               // fontFamily: 'sunflower',
                fontWeight: FontWeight.w700,
                fontSize: 50.0,
              ),
              bodyLarge: TextStyle(
                color: Colors.white,
               // fontFamily: 'sunflower',
                fontSize: 30.0,
              ),
              bodyMedium: TextStyle(
                color: Colors.white,
               // fontFamily: 'sunflower',
                fontSize: 20.0,
              ),
            )
        ),
        home: HomeScreen(),
      )
  );
}