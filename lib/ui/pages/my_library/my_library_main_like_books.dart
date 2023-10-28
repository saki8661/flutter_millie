import 'package:flutter/material.dart';

class MyLibraryMainLikeBooks extends StatefulWidget {
  const MyLibraryMainLikeBooks({super.key});

  @override
  State<MyLibraryMainLikeBooks> createState() => _MyLibraryMainLikeBooksState();
}

class _MyLibraryMainLikeBooksState extends State<MyLibraryMainLikeBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("좋아하는 책"),
      ),
    );
  }
}
