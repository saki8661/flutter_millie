import 'package:flutter/material.dart';

class MyLibraryMainBookcase extends StatefulWidget {
  const MyLibraryMainBookcase({super.key});

  @override
  State<MyLibraryMainBookcase> createState() => _MyLibraryMainBookcaseState();
}

class _MyLibraryMainBookcaseState extends State<MyLibraryMainBookcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("책장"),
      ),
    );
  }
}