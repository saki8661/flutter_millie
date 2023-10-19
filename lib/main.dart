import 'package:flutter/material.dart';
import 'package:flutter_millie/components/book_comment.dart';
import 'package:flutter_millie/components/book_data.dart';
import 'package:flutter_millie/components/book_detail_app_bar.dart';
import 'package:flutter_millie/components/book_image.dart';
import 'package:flutter_millie/components/book_subtitle.dart';
import 'package:flutter_millie/components/book_title_and_writer.dart';
import 'package:flutter_millie/components/custom_plus.dart';
import 'package:flutter_millie/components/expandable_description.dart';
import 'package:flutter_millie/components/millie_ranking.dart';
import 'package:flutter_millie/components/review_card.dart';
import 'package:flutter_millie/components/thick_line.dart';
import 'package:flutter_millie/components/thin_line.dart';
import 'package:flutter_millie/constants.dart';
import 'package:flutter_millie/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: BookDetail(),
    );
  }
}

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 앱바 시작
      appBar: BookDetailAppBar(),

      /// 리스트뷰 시작
      body: ListView(
        children: [
          /// 북 이미지 컴포넌트
          BookImage(),

          /// 간격: 15
          SizedBox(height: 15),

          /// 타이틀 + writer 컴포넌트
          BookTitleAndWriter(),

          /// 간격: 북이미지-제목
          SizedBox(height: 15),

          /// 북 인포
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// (아이콘 + 설명 + 숫자) 조합
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/avatar.png"),
                        ),
                      ),

                      /// 간격: 5
                      /// 간격: 인포 칼럼 내부
                      SizedBox(height: 5),

                      /// 작은글자
                      Text(
                        "이 책이 담긴 서재",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),

                      /// 간격: 5
                      SizedBox(height: 5),
                      Text(
                        "2,380개",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(height: 35, width: 1, color: Colors.grey),
                  Column(
                    children: [
                      Icon(Icons.comment_outlined, color: Colors.grey),
                      SizedBox(height: 5),
                      Text(
                        "한 줄 리뷰",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "4개",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(height: 35, width: 1, color: Colors.grey),
                  Column(
                    children: [
                      Icon(Icons.edit_outlined, color: Colors.grey),
                      SizedBox(height: 5),
                      Text(
                        "첫 포스트 작성하고",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "+1밀리",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ThickLine(),

          /// 밀리 순위(있는곳도 있고 없는 곳도 있음)
          MillieRanking(),
          ThickLine(),

          /// 밀리 책 소개
          BookComment(),
          ThickLine(),

          /// 소제목 + 설명
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookSubtitle(),
              ThinLine(),
              CustomPlus(
                title: "책 소개",
                description:
                    "에르메스, 시슬리, 까르띠에, 프레데릭 말, 입생로랑 세계적인 향수를 탄생시킨 마스터 조향사 장 클로드 엘레나의 '향수 식물학' 세계로 초대합니다",
              ),
            ],
          ),
          BookData(),

          /// 스크롤 끝자리는 여기!!!
          ExpandableDescription(
            title: "목차",
            description: "목차내용",
          ),
          ExpandableDescription(
            title: "저자 소개",
            description: "소개내용 \`n"
                "dkanmsf;af\n"
                "sakdnkalsnd",
          ),
          ExpandableDescription(
            title: "출판사 서평",
            description: "서평내용",
          ),
          // 컨테이너 간격: 10
          ThickLine(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "한 줄 리뷰",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "350",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kAccentMillieColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ReviewCard(),
        ],
      ),
    );
  }
}
