import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/pages/my_library/my_libray_main_page/my_library_main_reading_note/my_library_main_reading_note_form/my_library_main_reading_note_book.dart';
import 'package:flutter_blog/ui/pages/my_library/my_libray_main_page/my_library_main_reading_note/my_library_main_reading_note_form/my_library_main_reading_note_content.dart';
import 'package:flutter_blog/ui/widgets/custom_book_image.dart';
import 'package:flutter_blog/ui/widgets/custom_book_title_and_writer.dart';
import 'package:flutter_blog/ui/widgets/custom_tab_bar_menu.dart';

class MyLibraryMainReadingNote extends StatefulWidget {
  const MyLibraryMainReadingNote({Key? key}) : super(key: key);

  @override
  State<MyLibraryMainReadingNote> createState() =>
      _MyLibraryMainReadingNoteState();
}

class _MyLibraryMainReadingNoteState extends State<MyLibraryMainReadingNote> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 탭의 수
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("독서노트"),
          bottom: TabBar(
            tabs: [
              CustomTabBarMenu(tabBarText: "한줄리뷰"),
              CustomTabBarMenu(tabBarText: "포스트"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(gapMain),
          child: TabBarView(
            children: [
              // 첫 번째 탭의 내용
              // CustomTabBarMenu 탭에 대한 내용을 여기에 추가
              ListView(
                children: [
                  Text(
                    "4개",
                    /// 작성한 리뷰개수
                    style: title1(),
                  ),
                  SizedBox(height: gapXlarge),
                  MyLibraryMainReadingNoteContent(),
                  SizedBox(height: gapLarge),
                  MyLibraryMainReadingNoteBook(),
                ],
              ),

              // 두 번째 탭의 내용
              // CustomTabBarMenu 탭에 대한 내용을 여기에 추가
              ListView(children: [Text("포스트 탭 내용")]),
            ],
          ),
        ),
      ),
    );
  }
}


