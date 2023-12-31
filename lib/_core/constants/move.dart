import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/auth/join_id_email_page/join_id_email_page.dart';
import 'package:flutter_blog/ui/pages/custom/book_detail_page/book_detail_page.dart';
import 'package:flutter_blog/ui/pages/custom/post_detail_page/post_detail_page.dart';
import 'package:flutter_blog/ui/pages/custom/post_write_page/post_write_page.dart';
import 'package:flutter_blog/ui/pages/my_library/my_libray_main_page/my_library_main_page.dart';
import 'package:flutter_blog/ui/pages/today_now/now_book_list_page/now_book_list_page.dart';

class Move {
  // TODO : 서버 측 엔드포인트 확인
  // 예시
  static String NowBookListPage = "/nowBooks";
  static String BookDetailPage = "/bookDetail/1";
  static String PostDetailPage = "/postDetail";
  static String PostWritePage = "/postWrite";
  static String JoinIdEmailPage = "/joinIdEmail";
  static String MyLibraryMainPage = "/myLibraryMain";

}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // 예시
    Move.NowBookListPage: (context) => const NowBookListPage(),
    Move.BookDetailPage: (context) => const BookDetailPage(bookId: 1),
    Move.PostDetailPage: (context) => const PostDetailPage(),
    Move.PostWritePage: (context) => PostWritePage(),
    Move.JoinIdEmailPage: (context) => const JoinIdEmailPage(),
    Move.MyLibraryMainPage: (context) => MyLibraryMainPage()
  };
}
