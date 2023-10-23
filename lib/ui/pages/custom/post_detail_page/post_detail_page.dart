import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/ui/pages/custom/post_detail_page/widgets/post_detail_body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: iconArrowBack()),
          title: Text(""),
          actions: [
            IconButton(
              onPressed: () {},
              icon: iconEmptyHeart(),
            ),
            IconButton(
              onPressed: () {},
              icon: iconReply(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.shareFromSquare
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: iconDotMenu(),
            ),
        ],
      ),
      body: PostDetailBody(),
    );
  }
}
