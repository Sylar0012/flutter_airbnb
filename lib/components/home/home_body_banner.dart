import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        // 나중에 패딩 주기
        children: [
          _bulidBannerImage(),
          _bulidBannerCaption(),
        ],
      ),
    );
  }

  Widget _bulidBannerImage() {
    return Container(
      height: 200,
      color: Colors.yellow,
    );
  }

  Widget _bulidBannerCaption() {
    return Container(
      height: 100,
      color: Colors.blue,
    );
  }
}
