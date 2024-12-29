import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://ictedu.co.kr/');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    // ..setJavaScriptMode(JavaScriptMode.disabled) // JavaScript 비활성화
    ..setJavaScriptMode(JavaScriptMode.unrestricted) // JavaScript 전한이 없다.(활성화)
    ..enableZoom(true) // 확대/축소 활성화
    ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "한국 ICT 인재 개발원",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true, // 가운데 정렬
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
              color: Colors.white, // 아이콘 색상을 흰색으로 설정
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
