import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // 전체가 1000이라면 popularItemWidth = 700 / 3 - 5 = 228
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      // 나중에 지워야함
      color: Colors.green,
      height: 200,
      width: popularItemWidth,
      // 나중에 지웠다 추가했다 해보기
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: Column(
        children: [
          _bulidPopularItemImage(),
          _bulidPopularItemStar(),
          _bulidPopularItemComment(),
          _bulidPopularItemUserInfo(),
        ],
      ),
    );
  }

  Widget _bulidPopularItemImage() {
    return SizedBox();
  }

  Widget _bulidPopularItemStar() {
    return SizedBox();
  }

  Widget _bulidPopularItemComment() {
    return SizedBox();
  }

  Widget _bulidPopularItemUserInfo() {
    return SizedBox();
  }
}
