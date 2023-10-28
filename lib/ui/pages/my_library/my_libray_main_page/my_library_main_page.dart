import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/millie_bottom_navigation_bar.dart';
import 'package:flutter_blog/ui/pages/my_library/my_library_main_bookcase.dart';
import 'package:flutter_blog/ui/pages/my_library/my_library_main_like_books.dart';
import 'package:flutter_blog/ui/pages/my_library/my_library_main_reading_note.dart';

class MyLibraryMainPage extends StatelessWidget {
  const MyLibraryMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                snap: false,
                floating: false,
                pinned: true,
                actions: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent, // 배경을 투명하게 설정
                          builder: (BuildContext context) {
                            return Container(
                              height: 210, // 바텀 시트의 높이 설정
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          print("좋책");
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyLibraryMainLikeBooks()),
                                          );
                                        },
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              children: [
                                                iconBottomFeed(),
                                                SizedBox(width: gapMedium),
                                                Text(
                                                  "좋아하는 책",
                                                  style: subTitle1(
                                                      mFontWeight:
                                                          FontWeight.normal),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("책장");
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyLibraryMainBookcase()),
                                          );
                                        },
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              children: [
                                                iconBottomFeed(),
                                                SizedBox(width: gapMedium),
                                                Text(
                                                  "책장",
                                                  style: subTitle1(
                                                      mFontWeight:
                                                          FontWeight.normal),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("독서노트");
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyLibraryMainReadingNote()),
                                          );
                                        },
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Row(
                                              children: [
                                                iconBottomFeed(),
                                                SizedBox(width: gapMedium),
                                                Text(
                                                  "독서노트",
                                                  style: subTitle1(
                                                      mFontWeight:
                                                          FontWeight.normal),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: iconPost())
                ],
                expandedHeight: 250,
                toolbarHeight: 100,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(40), // 탭바의 높이 설정
                  child: Container(
                    color: Colors.white, // 탭바 배경색
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "좋아하는 책",
                            style: subTitle1(
                                mColor: kFontBlack,
                                mFontWeight: FontWeight.normal),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "책장",
                            style: subTitle1(
                                mColor: kFontBlack,
                                mFontWeight: FontWeight.normal),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "독서노트",
                            style: subTitle1(
                                mColor: kFontBlack,
                                mFontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 56, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/user_images/avatar.png"),
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            "룰룰루님의 서재",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Tab 1 Content
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text("이 사진을 삭제하시겠습니까?"),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // 삭제 로직을 여기에 구현
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("삭제"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("취소"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Image.network(
                        "https://picsum.photos/id/${index + 1}/200/200"),
                  );
                },
              ),
              // Tab 2 Content
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Image.network(
                      "https://picsum.photos/id/${index + 11}/200/200");
                },
              ),
              // Tab 3 Content
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                      child: Image.network(
                          "https://picsum.photos/id/${index + 30}/200/200"));
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: MillieBottomNavigationBar(),
      ),
    );
  }
}
