import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 나중에 패딩 주기
      children: [
        _bulidBannerImage(),
        _bulidBannerCaption(),
      ],
    );
  }

  Widget _bulidBannerImage() {
    return SizedBox();
  }

  Widget _bulidBannerCaption() {
    return SizedBox();
  }
}
