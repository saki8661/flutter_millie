import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/millie_bottom_navigation_bar.dart';
import 'package:flutter_blog/ui/pages/custom/book_read_page/book_read_page.dart';
import 'package:flutter_blog/ui/pages/my_library/my_library_main_bookcase.dart';
import 'package:flutter_blog/ui/pages/my_library/my_library_main_like_books.dart';
import 'package:flutter_blog/ui/pages/my_library/my_libray_main_page/my_library_main_reading_note/my_library_main_reading_note.dart';

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
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
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
                  return InkWell(
                    onTap: () {
                      // 이미지를 선택했을 때 바텀 시트를 올릴 코드를 추가
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "책 삭제",
                              style: title1(),
                              textAlign: TextAlign.center,
                            ),
                            content: Text(
                              "선택한 책 삭제 하시겠습니까?",
                              style: body1(mColor: kFontGray),
                              textAlign: TextAlign.center,
                            ),
                            actions: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            side: BorderSide(
                                              color: Colors.red, // 빨간색 테두리
                                            ),
                                          ),
                                          child: Text("삭제"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Image.network(
                      "https://picsum.photos/id/${index + 1}/200/200",
                    ),
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
        bottomNavigationBar: BottomAppBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookReadPage()),
                      );
                    },
                    child: Text(
                      "바로읽기",
                      style: subTitle1(mColor: kFontWhite),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: MillieBottomNavigationBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
