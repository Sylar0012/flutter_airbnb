import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];
  final popularComment = [
    "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개에요!!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋습니당 ㅎㅎ",
    "오후에 침대에 누워서 경치 구경하는게 인상깊은 숙소였습니다. 밤에 보는 야경도 좋습니다",
    "모던하네요 저희집 보다 좋아서 여기 살고 싶었습니다. 6명이서 갔는데도 넉넉하게 잘 지내다 왔습니다.",
  ];
  final popularStar = [
    4,
    5,
    4,
  ];
  final popularUesrName = [
    "겟인",
    "데어",
    "메타코딩",
  ];

  @override
  Widget build(BuildContext context) {
    // 전체가 1000이라면 popularItemWidth = 700 / 3 - 5 = 228
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      width: popularItemWidth, // 나중에 지웠다 추가했다 해보기

      child: Column(
        children: [
          _bulidPopularItemImage(),
          _bulidPopularItemStar(),
          _bulidPopularItemComment(),
          _bulidPopularItemUserInfo(),
          SizedBox(
            height: gap_m,
          )
        ],
      ),
    );
  }

  Widget _bulidPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _bulidPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            for (int i = 0; i < popularStar[id]; i++)
              Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _bulidPopularItemComment() {
    return Column(
      children: [
        Text(
          "${popularComment[id]}",
          style: body1(),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _bulidPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            "assets/p${(id + 1)}.jpeg",
          ),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "${popularUesrName[id]}",
              style: subtitle1(),
            ),
            Text("한국")
          ],
        ),
      ],
    );
  }
}
