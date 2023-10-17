import 'package:flutter/material.dart';
import 'package:flutter_millie/constants.dart';
import 'package:flutter_millie/expandable_description.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star_border, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black),
          )
        ],
      ),
      body: ListView(
        children: [
          /// 북 이미지 컴포넌트
          Center(
            child: Container(
              height: 300,
              width: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200/300"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // 그림자 색상
                    offset: Offset(4, 4), // 그림자 위치
                    blurRadius: 20, // 그림자 흐림 정도
                  ),
                ],
              ),
            ),
          ),

          /// 간격: 15
          SizedBox(height: 15),

          /// 타이틀 + writer 컴포넌트
          Container(
            child: Column(
              children: [
                Text(
                  "[독점] 향수가 된 식물들",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                /// 간격: 5
                SizedBox(height: 5),

                /// 작은글자
                Text(
                  "장 클로드 엘레나 지금 / 카린 도어링 프로저 그림 / 이주영 옮김",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          /// 북인포
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// (아이콘 + 소개 + 수치)
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

          /// 컨테이너 간격: 10
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),

          /// 밀리 순위(있는곳도 있고 없는 곳도 있음)
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.award),
                  SizedBox(width: 10),
                  Text(
                    "라이프스타일 분야 주간 베스트 3위",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// 컨테이너 간격: 10
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),

          /// 밀리 책 소개
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "에르메스 조향사가 안내하는 향수 식물학 세계",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "식물의 향과 향수에 관한 다채로운 이야기",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),

          /// 컨테이너 간격: 0.5
          Container(
            width: double.infinity,
            height: 0.5,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),

          /// 밀리 픽
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.book),
                      SizedBox(width: 10),
                      Text(
                        "밀리 완독지수",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(color: Colors.lightBlue),
                    child: Center(child: Text("여기는 그래프자리야!!")),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(FontAwesomeIcons.circle, size: 10),
                      Text(
                        "마니아",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Container(height: 15, width: 2, color: Colors.grey),
                      Text(
                        "마니아들이 푹 빠진 읽을수록 보람 있는 책",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// 컨테이너 간격: 10
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),

          /// 소제목 + 설명
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "부제",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text("에르메스 조향사가 안내하는 향수 식물학의 세계"),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "책 소개",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text("에르메스, 시슬리, 까르띠에, 프레데릭 말, 입생로랑 ..."),
                      Text("세계적인 향수를 탄생시킨 마스터 조향사"),
                      Text("장 클로드 엘레나의 '향수 식물학' 세계로 초대합니다!"),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "더보기",
                      style: TextStyle(
                        color: kPointMillieColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          ///낚였다 여기는 가로스크롤되는 자리였다!
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "카테고리",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "라이프스타일",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(height: 60, width: 2, color: Colors.grey),
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "페이지",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "228P",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(height: 60, width: 2, color: Colors.grey),
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "용량",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "55.98MB",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// 스크롤 끝자리는 여기!!!
          ExpandableDescription(
            title: "목차",
            description: "목차내용",
          ),

          ExpandableDescription(
            title: "저자 소개",
            description: "소개내용",
          ),

          ExpandableDescription(
            title: "출판사 서평",
            description: "서평내용",
          ),
        ],
      ),
    );
  }
}
