import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/size.dart';

class MyLibraryMainReadingNoteBook extends StatelessWidget {
  const MyLibraryMainReadingNoteBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBackGray,
      ),
      child: Row(
        children: [
          SizedBox(width: gapLarge),
          Container(
            height: MediaQuery.of(context).size.height / 6 * 0.8,
            width: MediaQuery.of(context).size.width / 0.9 * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/300"),
                fit: BoxFit.cover, // 이미지를 적절히 맞춥니다.
              ),
            ),
          ),
          SizedBox(width: gapMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("니가 가라 하와이", style: title1()),
                  SizedBox(height: gapSmall),
                  Text("장동건", style: title1(mFontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
