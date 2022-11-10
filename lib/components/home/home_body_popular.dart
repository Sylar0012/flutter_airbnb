import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPopularTitle(),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildPopularTitle() {
    return SizedBox();
  }

  Widget _buildPopularList() {
    return Container(
      // 나중에 빼기
      color: Colors.red,
      child: Wrap(
        children: [
          HomeBodyPopularItem(id: 0),
          SizedBox(
            width: 7.5,
          ),
          HomeBodyPopularItem(id: 1),
          SizedBox(
            height: 2.5,
            width: 7.5,
          ),
          HomeBodyPopularItem(id: 2),
        ],
      ),
    );
  }
}
