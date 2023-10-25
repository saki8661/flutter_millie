import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/ui/pages/custom/post_write_page/widgets/body/post_write_body.dart';

class PostWritePage extends StatelessWidget {
  const PostWritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: iconArrowBack()),
        title: Text("일반 포스트", style: subTitle1()),
        actions: [
          TextButton(
            onPressed: () {

            },
            child: Text("발행", style: subTitle1(mFontWeight: FontWeight.normal)),
          )
        ],
      ),
      body: PostWriteBody(),
    );
  }
}
