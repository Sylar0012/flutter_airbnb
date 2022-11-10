import 'package:flutter/material.dart';
import 'package:flutter_airbnb/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

// 최초의 메인 페이지
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
