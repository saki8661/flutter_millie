import 'package:flutter/material.dart';

class MyLibraryMainReadingNote extends StatefulWidget {
  const MyLibraryMainReadingNote({super.key});

  @override
  State<MyLibraryMainReadingNote> createState() => _MyLibraryMainReadingNoteState();
}

class _MyLibraryMainReadingNoteState extends State<MyLibraryMainReadingNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "독서노트"
        ),
      ),
    );
  }
}
