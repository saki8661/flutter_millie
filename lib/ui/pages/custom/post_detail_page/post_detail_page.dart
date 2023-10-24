import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/icon.dart';
import 'package:flutter_blog/ui/pages/custom/post_detail_page/widgets/body/post_detail_body.dart';

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
        ],
      ),
      body: PostDetailBody(),
    );
  }
}
